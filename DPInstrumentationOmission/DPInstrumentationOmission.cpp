#include "DPInstrumentationOmission.h"

#define DEBUG_TYPE "dp-omissions"

#define DP_DEBUG false

STATISTIC(totalInstrumentations, "Total DP-Instrumentations");
STATISTIC(removedInstrumentations, "Disregarded DP-Instructions");

static cl::opt<bool> DPOmissionsDepAnalysis(
  "dp-omissions-dep-analysis", cl::init(false),
  cl::desc("Omit instructions with predictable dependencies based on BasicBlock execution"), cl::Hidden
);

static cl::opt<bool> DPOmissionsDumpToDot(
  "dp-omissions-dump-dot", cl::init(false),
  cl::desc("Generate a .dot representation of the CFG and DG"), cl::Hidden
);

StringRef DPInstrumentationOmission::getPassName() const{
  return "DPInstrumentationOmission";
}

void DPInstrumentationOmission::getAnalysisUsage(AnalysisUsage &AU) const {
  AU.addRequired<DominatorTreeWrapperPass>();
  AU.addRequired<AAResultsWrapperPass>();
}

string DPInstrumentationOmission::edgeToDPDep(Edge<Instruction*, bool> *e){
    Instruction *I = e->getSrc()->getItem();
    Instruction *J = e->getDst()->getItem();
    string depType = (isa<LoadInst>(I) ? string("R") : string("W")) + "A" + (isa<LoadInst>(J) ? string("R") : string("W"));

    return to_string(fid) + ":"
      + to_string(I->getDebugLoc().getLine()) + " "
      + depType + " "
      + to_string(fid) + ":"
      + to_string(J->getDebugLoc().getLine()) + "|"
      + VNF->getVarName(I)
    ;
}

bool DPInstrumentationOmission::runOnFunction(Function &F) {
  if(DP_DEBUG) errs() << "\n---------- Omission Analysis on " << F.getName() << " ----------\n";

  DebugLoc dl;
  Value *v;
  AAResults* AAR = &getAnalysis<AAResultsWrapperPass>().getAAResults();
  DominatorTree& DT = getAnalysis<DominatorTreeWrapperPass>().getDomTree();
  
  set<Instruction*> omittableInstructions;

  determineFileID(F, fid);

  set<Value*> localValues, writtenValues;

  // Get local values (variables)
  for (inst_iterator I = inst_begin(F), SrcE = inst_end(F); I != SrcE; ++I) {
    if (DbgDeclareInst* DbgDeclare = dyn_cast<DbgDeclareInst>(&*I)) {
      localValues.insert(DbgDeclare->getAddress());
    } else if (DbgValueInst* DbgValue = dyn_cast<DbgValueInst>(&*I)) {
      localValues.insert(DbgValue->getValue());
    }
  }
  
  for (inst_iterator I = inst_begin(F), SrcE = inst_end(F); I != SrcE; ++I) {
    if(CallInst* call_inst = dyn_cast<CallInst>(&*I)){
      if(Function *Fun = call_inst->getCalledFunction()){
        if(Fun->getName() == "__dp_write" || Fun->getName() == "__dp_read"){
          ++totalInstrumentations;
        }
        // Remove from localValues those which may alias values passed to other functions (by ref/ptr)
        for(uint i = 0; i < call_inst->getNumOperands() - 1; ++i){
          v = call_inst->getArgOperand(i);
          for(Value *w: localValues){
            if(!AAR->isNoAlias(v, w)){
              localValues.erase(v);
            }
          }
        }
      }
    }
    // Get written values
    if(isa<StoreInst>(&*I)){
      if(I->getDebugLoc()){
        writtenValues.insert(I->getOperand(1));
      }
    }
  }

  // Find (omittable) strictly-local read-only instructions 
  for (inst_iterator I = inst_begin(F), SrcE = inst_end(F); I != SrcE; ++I) {
    if(isa<StoreInst>(&*I) || isa<LoadInst>(&*I)){
      dl = I->getDebugLoc();
      v = I->getOperand(isa<StoreInst>(&*I) ? 1 : 0);
      if(
        localValues.find(v) != localValues.end() && writtenValues.find(v) == writtenValues.end()
        || v->getName() == "retval"
        || AAR->pointsToConstantMemory(v)
      ) omittableInstructions.insert(&*I);
    }
  }
  
  // Perform the predictable dependence analysis
  if(DPOmissionsDepAnalysis){

    map<BasicBlock*, set<string>> conditionalDepMap;
    InstructionCFG CFG(VNF, F);
    InstructionDG DG(VNF, &CFG, AAR);
    Instruction *I, *J;

    for(auto node : DG.getNodes()){
      if(I = node->getItem()){
        set<string> tmpDeps;
        for(auto edge: DG.getOutEdges(node)){
          if(J = edge->getDst()->getItem()){
            if(I == J || !DT.dominates(J, I) || !edge->get()) goto next; // if 1 dep is not predictable, don't omit instr
            tmpDeps.insert(edgeToDPDep(edge));
          }
        }
        for(auto edge: DG.getInEdges(node)){
          if(J = edge->getSrc()->getItem()){
            if(I == J || !DT.dominates(I, J) || !edge->get()) goto next; // if 1 dep is not predictable, don't omit instr
            tmpDeps.insert(edgeToDPDep(edge));
          }
        }
        v = I->getOperand(isa<StoreInst>(&*I) ? 1 : 0);
        if(tmpDeps.size() > 0 && localValues.find(v) != localValues.end()){
          omittableInstructions.insert(I);
          if(!conditionalDepMap.count(I->getParent()))
            conditionalDepMap[I->getParent()] = tmpDeps;
          else
            conditionalDepMap[I->getParent()].insert(tmpDeps.begin(), tmpDeps.end());
        }
        next:;
      }
    }
    for(auto pair: conditionalDepMap){
      // CallInst::Create(ReportBB, ConstantInt::get(Int32, conditionalBBDeps.size()), "", pair.first->getTerminator());
      conditionalBBDeps.push_back(pair.second);
    }

    if(DPOmissionsDumpToDot){
      CFG.dumpToDot(fileName + "_" + string(F.getName()) + ".CFG.dot");
      if(DPOmissionsDepAnalysis)
        DG.dumpToDot(fileName + "_" + string(F.getName()) + ".DG.dot");
    }

    if(DP_DEBUG){
      errs() << "Conditional Dependences:\n";
      for(auto pair : conditionalDepMap){
        errs() << pair.first->getName() << ":\n";
        for(auto s: pair.second){
          errs() << "\t" << s << "\n";
        }
      }
    }
  }

  if(DP_DEBUG){
    errs() << "Load/Store Instructions:\n";
    for (inst_iterator I = inst_begin(F), SrcE = inst_end(F); I != SrcE; ++I) {
      if(isa<StoreInst>(&*I) || isa<LoadInst>(&*I)){
        errs() << "\t" << (isa<StoreInst>(&*I) ? "Write " : "Read ") << VNF->getVarName(&*I) << " | ";
        if(dl = I->getDebugLoc()) errs() << dl.getLine() << "," << dl.getCol();
        else errs() << "INIT";
        if(omittableInstructions.find(&*I) != omittableInstructions.end()){
          errs() << " | (OMIT)";
        }
        errs() << "\n";
      }
    }
  }
  // Remove omittable instructions from profiling
  for(Instruction* I : omittableInstructions){
    Instruction* prev = I->getPrevNode();
    if(CallInst* call_inst = dyn_cast<CallInst>(prev)){
      if(Function* Fun = call_inst->getCalledFunction()){
        string fn = Fun->getName();
        if(fn == "__dp_write" || fn == "__dp_read"){
          prev->eraseFromParent();
          // call_inst->setArgOperand(0, ConstantInt::get(Int32, 0));
          ++removedInstrumentations;
        }
      }
    }
  }

  return true;
}

bool DPInstrumentationOmission::doInitialization(Module &M){
  Void = const_cast<Type *>(Type::getVoidTy(M.getContext()));
  Int32 = const_cast<IntegerType *>(IntegerType::getInt32Ty(M.getContext()));
  CharPtr = const_cast<PointerType *>(Type::getInt8PtrTy(M.getContext()));
  ReportBB = cast<Function>(M.getOrInsertFunction("__dp_report_bb", Void, Int32));
  VNF = new dputil::VariableNameFinder(M);

  fileName = M.getName().substr(M.getName().find_last_of("/\\") + 1);
  //TODO: get full path to current working dir to init filePath

  // Find __dp_finalize call and add a __dp_add_omission_deps call before it
  for(Function &F : M){
    if(!F.hasName() || F.getName() != "main") continue;
    for(BasicBlock &BB : F){
      for(Instruction &I: BB){
        if(CallInst* call_inst = dyn_cast<CallInst>(&I)){
          if(Function *Fun = call_inst->getCalledFunction()){
            if(Fun->getName() == "__dp_finalize"){
              /*
              IRBuilder<> builder(call_inst);
              Value *v = builder.CreateGlobalStringPtr(StringRef(filePath + "/" + fileName + "_dp_conditional_deps.txt"), ".dp_omission_deps");
              CallInst::Create(
                cast<Function>(F.getParent()->getOrInsertFunction("__dp_add_omission_deps", Void, CharPtr)),
                v,
                "",
                call_inst
              );
              */
            }
          }
        }
      }
    }
  }
}

bool DPInstrumentationOmission::doFinalization(Module &M){
  // Write conditional deps to a file to be read in post-processing
  if(!DPOmissionsDepAnalysis) return false;
  ofstream stream;
  stream.open(filePath + "/" + fileName + "_dp_conditional_deps.txt");
	if (!stream.is_open())
	{
		errs() << "Problem opening json file for writing: " << filePath + "/" + fileName + string("_dp_conditional_deps.txt") << "\n";
	}
	else
	{
    bool first1 = true;
    for(auto bbDeps : conditionalBBDeps){
      if(!first1) stream << "\n";
      bool first2 = true;
      for(auto dep: bbDeps){
        if(!first2) stream << ",";
        stream << dep;
        first2=false;
      }
      first1 = false;
    }
  }
  stream.close();
  errs () << "Wrote conditional deps to: " << filePath + "/" + fileName + string("_dp_conditional_deps.txt") << "\n";
  return false;
}

char DPInstrumentationOmission::ID = 0;

static RegisterPass<DPInstrumentationOmission> X("dp-instrumentation-omission", "Run the discopop instrumentation omission analysis. Removes omittable store/load instrumentation calls", false, false);
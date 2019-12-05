#include "DPInstrumentationOmission.h"
#include <filesystem>
namespace fs = std::filesystem;
#define DEBUG_TYPE "dpop"

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

void DPInstrumentationOmission::depFinder(){
  vector<Instruction*>* checkedInstructions = new vector<Instruction*>();
  for(auto edge: CFG->getInEdges(CFG->getExit()))
    depFinderHelper1(checkedInstructions, edge->getSrc()->getItem());
}

void DPInstrumentationOmission::depFinderHelper1(vector<Instruction*>* checkedInstructions, Instruction* I){
  if(CFG->isEntryOrExit(I)) return;
  checkedInstructions->push_back(I);
  for(auto edge: CFG->getInEdges(I)){
    if((isa<StoreInst>(I) || isa<LoadInst>(I)) && omittableInstructions.find(I) == omittableInstructions.end())
      depFinderHelper2(new vector<Instruction*>(), I, edge->getSrc()->getItem());
    if(find(checkedInstructions->begin(), checkedInstructions->end(), edge->getSrc()->getItem()) == checkedInstructions->end())
      depFinderHelper1(checkedInstructions, edge->getSrc()->getItem());
  }
}

void DPInstrumentationOmission::depFinderHelper2(vector<Instruction*>* checkedInstructions, Instruction* I, Instruction* C){
  checkedInstructions->push_back(C);
  if(CFG->isEntryOrExit(C)) return;

  if (DbgDeclareInst* DbgDeclare = dyn_cast<DbgDeclareInst>(C))
    if(DbgDeclare->getAddress() == I->getOperand(isa<StoreInst>(I) ? 1 : 0))
      return;
  else if (DbgValueInst* DbgValue = dyn_cast<DbgValueInst>(C))
    if(DbgValue->getValue() == I->getOperand(isa<StoreInst>(I) ? 1 : 0))
      return;
  AliasResult AR = AAR->alias(I->getOperand(isa<StoreInst>(I) ? 1 : 0), C->getOperand(isa<StoreInst>(C) ? 1 : 0));
  if((isa<StoreInst>(I) || isa<StoreInst>(C)) && AR != NoAlias){
    DG->addEdge(I, C, AR == MustAlias);
    if(AR == MustAlias)
      return;
  }
  for(auto edge: CFG->getInEdges(C))
    if(find(checkedInstructions->begin(), checkedInstructions->end(), edge->getSrc()->getItem()) == checkedInstructions->end())
      depFinderHelper2(checkedInstructions, I, edge->getSrc()->getItem());
}


bool DPInstrumentationOmission::runOnFunction(Function &F) {
  if(DP_DEBUG) errs() << "\n---------- Omission Analysis on " << F.getName() << " ----------\n";

  DebugLoc dl;
  Value *v;
  AAR = &getAnalysis<AAResultsWrapperPass>().getAAResults();
  DominatorTree& DT = getAnalysis<DominatorTreeWrapperPass>().getDomTree();
  DG = new InstructionGraph(VNF);
  CFG = new InstructionGraph(VNF, true);

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
      CFG->addNode(&*I);
      DG->addNode(&*I);
      v = I->getOperand(isa<StoreInst>(&*I) ? 1 : 0);
      if(
        localValues.find(v) != localValues.end() && writtenValues.find(v) == writtenValues.end()
        || v->getName() == "retval"
      ) omittableInstructions.insert(&*I);
    }
  }
  
  map<BasicBlock*, set<string>> conditionalDepMap;
  // Perform the predictable dependence analysis
  if(DPOmissionsDepAnalysis){
    // Create Store/Load-CFG
    std::function<void(BasicBlock*,Instruction*)> add_first_successor_store_load_instructions;
    add_first_successor_store_load_instructions = [&](BasicBlock *BB, Instruction* previousInstruction)
    {
      bool hasSuccessors = false;
      for (BasicBlock *S : successors(BB)) {
        hasSuccessors = true;
        for (Instruction &I : *S){
          DebugLoc dl = I.getDebugLoc();
          if(!dl) continue;
          if(isa<StoreInst>(I) || isa<LoadInst>(I)){
            CFG->addEdge(previousInstruction, &I, false);
            goto next;
          }else if(isa<DbgDeclareInst>(&I)){
            CFG->addEdge(previousInstruction, &I, false);
            goto next;
          }
        }
        if(S != BB) 
          add_first_successor_store_load_instructions(S, previousInstruction);
        next:;
      }
      if(BB->getName().find("for.end") != string::npos && !hasSuccessors){
        CFG->connectToExit(previousInstruction);
      }
    };
    Instruction *previousInstruction;
    for (BasicBlock &BB : F){
      // Add current block's store/load-instructions and declarations to graph
      previousInstruction = nullptr;
      for (Instruction &I : BB){
        dl = I.getDebugLoc();
        if(!dl) continue;
        DbgDeclareInst* DbgDeclare = dyn_cast<DbgDeclareInst>(&I);
        if(isa<StoreInst>(I) || isa<LoadInst>(I) || DbgDeclare){
          if(previousInstruction != nullptr){
              CFG->addEdge(previousInstruction, &I, false);
          }
          previousInstruction = &I;
        }
      }
      // Add edges from last instruction in current block to first instruction all the successor blocks
      if(previousInstruction != nullptr){
        add_first_successor_store_load_instructions(&BB, previousInstruction);
      }
    }
    // Conect exit nodes
    for(auto node : CFG->getNodes()){
      if(node != CFG->getEntry() && node != CFG->getExit()){
        if(CFG->getInEdges(node).empty()){
          CFG->connectToEntry(node->getItem());
        }else if(CFG->getOutEdges(node).empty()){
          CFG->connectToExit(node->getItem());
        }
      }
    }
    depFinder();
    Instruction *I, *J;

    for(auto node : DG->getNodes()){
      if(I = node->getItem()){
        set<string> tmpDeps;
        for(auto edge: DG->getOutEdges(node)){
          if(J = edge->getDst()->getItem()){
            if(I == J || !DT.dominates(J, I) || !edge->get()) goto next; // if 1 dep is not predictable, don't omit instr
            tmpDeps.insert(edgeToDPDep(edge));
          }
        }
        for(auto edge: DG->getInEdges(node)){
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
      CallInst::Create(ReportBB, ConstantInt::get(Int32, conditionalBBDeps.size()), "", pair.first->getTerminator());
      conditionalBBDeps.push_back(pair.second);
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
    
    errs() << "Conditional Dependences:\n";
    for(auto pair : conditionalDepMap){
      errs() << pair.first->getName() << ":\n";
      for(auto s: pair.second){
        errs() << "\t" << s << "\n";
      }
    }
  }

  // Remove omittable instructions from profiling
  for(Instruction *I : omittableInstructions){
    Instruction *prev = I->getPrevNode();
    if(CallInst* call_inst = dyn_cast<CallInst>(prev)){
      if(Function *Fun = call_inst->getCalledFunction()){
        string fn = Fun->getName();
        if(fn == "__dp_write" || fn == "__dp_read" || fn == "@__dp_write" || fn == "@__dp_read"){
          prev->eraseFromParent();
          ++removedInstrumentations;
        }
      }
    }
  }

  if(DPOmissionsDumpToDot){
    CFG->dumpToDot(fileName + "_" + string(F.getName()) + ".CFG.dot");
    if(DPOmissionsDepAnalysis)
      DG->dumpToDot(fileName + "_" + string(F.getName()) + ".DG.dot");
  }

  return true;
}

bool DPInstrumentationOmission::doInitialization(Module &M){
  std::cout << "Current path is " << fs::current_path() << '\n';
  Void = const_cast<Type *>(Type::getVoidTy(M.getContext()));
  Int32 = const_cast<IntegerType *>(IntegerType::getInt32Ty(M.getContext()));
  CharPtr = const_cast<PointerType *>(Type::getInt8PtrTy(M.getContext()));
  ReportBB = cast<Function>(M.getOrInsertFunction("__dp_report_bb", Void, Int32));
  VNF = new dputil::VariableNameFinder(M);

  //TODO: get current working dir instead
  fileName = M.getName();

  // Find __dp_finalize call and add a __dp_add_omission_deps call before it
  for(Function &F : M){
    if(!F.hasName() || F.getName() != "main") continue;
    for(BasicBlock &BB : F){
      for(Instruction &I: BB){
        if(CallInst* call_inst = dyn_cast<CallInst>(&I)){
          if(Function *Fun = call_inst->getCalledFunction()){
            if(Fun->getName() == "__dp_finalize"){
              IRBuilder<> builder(call_inst);
              Value *v = builder.CreateGlobalStringPtr(StringRef(fileName + string("_dp_conditional_deps.txt")), ".dp_omission_deps");
              CallInst::Create(
                cast<Function>(F.getParent()->getOrInsertFunction("__dp_add_omission_deps", Void, CharPtr)),
                v,
                "",
                call_inst
              );
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
  stream.open(fileName + string("_dp_conditional_deps.txt"));
	if (!stream.is_open())
	{
		errs() << "Problem opening json file for writing: " << fileName + string("_dp_conditional_deps.txt") << "\n";
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
  errs () << "wrote file: " << fileName + string("_dp_conditional_deps.txt") << "\n";
  return false;
}

char DPInstrumentationOmission::ID = 0;

static RegisterPass<DPInstrumentationOmission> X("dp-instrumentation-omission", "Run the discopop instrumentation omission analysis. Removes omittable store/load instrumentation calls", false, false);
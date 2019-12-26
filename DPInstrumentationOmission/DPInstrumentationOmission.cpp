#include "DPInstrumentationOmission.h"

#define DEBUG_TYPE "dp-omissions"

#define DP_DEBUG true

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
}

bool DPInstrumentationOmission::runOnModule(Module &M) {
  int bbDepCount = 0;
  string bbDepString;
  for(Function &F: M){
    if(F.getInstructionCount() == 0) continue;
    if(DP_DEBUG) errs() << "\n---------- Omission Analysis on " << F.getName() << " ----------\n";

    DebugLoc dl;
    Value *v;
    
    set<Instruction*> omittableInstructions;
    set<Value*> localValues, writtenValues;

    // Get local values (variables)
    for (Instruction& I: F.getEntryBlock()) {
      if (AllocaInst* AI = dyn_cast<AllocaInst>(&I)) {
        localValues.insert(AI);
      }
    }
    
    for (BasicBlock& BB: F) {
      for(Instruction& I: BB){
        if(CallInst* call_inst = dyn_cast<CallInst>(&I)){
          if(Function *Fun = call_inst->getCalledFunction()){
            if(Fun->getName() == "__dp_write" || Fun->getName() == "__dp_read" || Fun->getName() == "__dp_alloca"){
              ++totalInstrumentations;
            }
            // Remove from localValues those which are passed to other functions (by ref/ptr)
            for(uint i = 0; i < call_inst->getNumOperands() - 1; ++i){
              v = call_inst->getArgOperand(i);
              for(Value *w: localValues){
                if(w == v){
                  localValues.erase(v);
                }
              }
            }
          }
        }
        if(isa<StoreInst>(I)){
          if(I.getDebugLoc()){
            writtenValues.insert(I.getOperand(1));
          }

          // Remove values from locals if dereferenced
          v = I.getOperand(0);
          for(Value *w: localValues){
            if(w == v){
              localValues.erase(v);
            }
          }
        }
      }
    }

    if(DP_DEBUG){
      errs() << "--- Local Values ---\n";
      for(auto V: localValues){
        errs() << VNF->getVarName(V) << "\n";
      }
    }

    if(!DPOmissionsDepAnalysis){
      // Find (omittable) strictly-local read-only instructions 
      for (inst_iterator I = inst_begin(F), SrcE = inst_end(F); I != SrcE; ++I) {
        if(isa<StoreInst>(&*I) || isa<LoadInst>(&*I) || isa<AllocaInst>(&*I)){
          dl = I->getDebugLoc();
          v = I->getOperand(isa<StoreInst>(&*I) ? 1 : 0);
          if(
            localValues.find(v) != localValues.end() && writtenValues.find(v) == writtenValues.end()
          ) omittableInstructions.insert(&*I);
        }
      }
    }

    // Perform the predictable dependence analysis
    if(DPOmissionsDepAnalysis){
      int32_t fid;
      determineFileID(F, fid);
      map<BasicBlock*, set<string>> conditionalBBDepMap;
      map<BasicBlock*, map<BasicBlock*, set<string>>> conditionalBBPairDepMap;

      auto &DT = getAnalysis<DominatorTreeWrapperPass>(F).getDomTree();
      InstructionCFG CFG(VNF, F);
      InstructionDG DG(VNF, &CFG, fid);

      for(auto edge : DG.getEdges()){
        Instruction* Src = edge->getSrc()->getItem();
        Instruction* Dst = edge->getDst()->getItem();

        v = Src->getOperand(isa<StoreInst>(Src) ? 1 : 0);
        
        if(localValues.find(v) != localValues.end()){
          if(Src != Dst && DT.dominates(Dst, Src)){
            if(!conditionalBBDepMap.count(Src->getParent())){
              set<string> tmp;
              conditionalBBDepMap[Src->getParent()] = tmp;
            }
            conditionalBBDepMap[Src->getParent()].insert(DG.edgeToDPDep(edge));
          }
          else{
            if(!conditionalBBPairDepMap.count(Dst->getParent())){
              map<BasicBlock*, set<string>> tmp;
              conditionalBBPairDepMap[Dst->getParent()] = tmp;
            }
            if(!conditionalBBPairDepMap[Dst->getParent()].count(Src->getParent())){
              set<string> tmp;
              conditionalBBPairDepMap[Dst->getParent()][Src->getParent()] = tmp;
            }
            conditionalBBPairDepMap[Dst->getParent()][Src->getParent()].insert(DG.edgeToDPDep(edge));
          }
          omittableInstructions.insert(Src);
          omittableInstructions.insert(Dst);
        }
      }

      for(auto node: DG.getNodes()){
        if(!isa<StoreInst>(node->getItem()) && !!isa<LoadInst>(node->getItem())) continue;
        v = node->getItem()->getOperand(isa<StoreInst>(node->getItem()) ? 1 : 0);
        if(!DG.getInEdges(node).size() && !DG.getOutEdges(node).size() && localValues.find(v) != localValues.end())
          omittableInstructions.insert(node->getItem());
      }

      // Handle found bbDeps
      for(auto pair : conditionalBBDepMap){
        // Insert call to reportbb
        Instruction* insertionPoint = pair.first->getTerminator();
        if(isa<ReturnInst>(pair.first->getTerminator())){
          insertionPoint = insertionPoint->getPrevNonDebugInstruction();
        }
        auto CI = CallInst::Create(
          ReportBB, 
          ConstantInt::get(Int32, bbDepCount),
          "",
          insertionPoint
        );
        
        // insert deps to string
        if(bbDepCount) bbDepString += "/";
        bool first = true;
        bbDepString += to_string(bbDepCount) + "=";
        for(auto dep: pair.second){
          if(!first) bbDepString += ",";
          bbDepString += dep;
          first=false;
        }
        ++bbDepCount;
      }


      // Handle found bbPairDeps
      for(auto pair1 : conditionalBBPairDepMap){
        // Alloca and init semaphore var for BB
        auto AI = new AllocaInst(Int32, 0, "__dp_bb", F.getEntryBlock().getFirstNonPHI()->getNextNonDebugInstruction());
        new StoreInst(ConstantInt::get(Int32, 0), AI, false, AI->getNextNonDebugInstruction());

        for(auto pair2: pair1.second){
          // Insert check for semaphore
          Instruction* insertionPoint = pair2.first->getTerminator();
          if(isa<ReturnInst>(pair2.first->getTerminator())){
            insertionPoint = insertionPoint->getPrevNonDebugInstruction();
          }
          auto LI = new LoadInst(AI, Twine(""), false, insertionPoint);
          ArrayRef< Value * > arguments({LI, ConstantInt::get(Int32, bbDepCount)});
          CallInst::Create(
            ReportBBPair,
            arguments,
            "",
            insertionPoint
          );

          // ---- Insert deps into string ----
          if(bbDepCount) bbDepString += "/";
          bbDepString += to_string(bbDepCount);
          bbDepString += "=";
          bool first = true;
          for(auto dep: pair2.second){
            if(!first) bbDepString += ",";
            bbDepString += dep;
            first=false;
          }
          // ----------------------------------
          ++bbDepCount;
        }
        // Insert semaphore update to true
        new StoreInst(ConstantInt::get(Int32, 1), AI, false, pair1.first->getTerminator());
      }

      if(DPOmissionsDumpToDot){
        CFG.dumpToDot(fileName + "_" + string(F.getName()) + ".CFG.dot");
        if(DPOmissionsDepAnalysis)
          DG.dumpToDot(fileName + "_" + string(F.getName()) + ".DG.dot");
      }
      if(DP_DEBUG){
      
        errs() << "--- Conditional BB Dependences:\n";
        for(auto pair : conditionalBBDepMap){
          errs() << pair.first->getName() << ":\n";
          for(auto s: pair.second){
            errs() << "\t" << s << "\n";
          }
        }

        errs() << "--- Conditional BB-Pair Dependences:\n";
        for(auto pair1 : conditionalBBPairDepMap){
          for(auto pair2: pair1.second){
            errs() << pair1.first->getName() << "-";
            errs() << pair2.first->getName() << ":\n";
            for(auto s: pair2.second)
              errs() << "\t" << s << "\n";
          }
        }
      }
    }
  
    if(DP_DEBUG){
      errs() << "--- Omitted Instructions:\n";
      for (auto I: omittableInstructions){
        errs() << "\t" << (isa<StoreInst>(I) ? "Write " : (isa<AllocaInst>(I) ? "Alloca " : "Read ")) << VNF->getVarName(I) << " | ";
        if(dl = I->getDebugLoc()) errs() << dl.getLine() << "," << dl.getCol();
        else errs() << "INIT";
        errs() << " | (OMIT)";
        Value *V = I->getOperand(isa<StoreInst>(I) ? 1 : 0);
         if(isa<AllocaInst>(I)) V = dyn_cast<Value>(I);
        errs() << V->getName() << " | " << V;
        errs() << " | " << (localValues.find(V) != localValues.end());
        
        errs() << "\n";
      }
    }
    // Remove omittable instructions from profiling
    for(Instruction* I : omittableInstructions){
      Instruction* prev = I->getPrevNode();
      if(!prev) continue;
      if(CallInst* call_inst = dyn_cast<CallInst>(prev)){
        if(Function* Fun = call_inst->getCalledFunction()){
          string fn = Fun->getName();
          if(fn == "__dp_write" || fn == "__dp_read" || fn == "__dp_alloca"){
            prev->eraseFromParent();
            // call_inst->setArgOperand(0, ConstantInt::get(Int32, 0));
            ++removedInstrumentations;
          }
        }
      }
    }
    if(DP_DEBUG) errs() << "Done with function " << F.getName() << ":\n";
  }

  if(!DPOmissionsDepAnalysis) return true;
  
  // Find __dp_finalize call and add a __dp_add_omission_deps call before it
  for(Function &F : M){
    if(!F.hasName() || F.getName() != "main") continue;
    for(BasicBlock &BB : F){
      for(Instruction &I: BB){
        if(CallInst* call_inst = dyn_cast<CallInst>(&I)){
          if(Function *Fun = call_inst->getCalledFunction()){
            if(Fun->getName() == "__dp_finalize"){
              IRBuilder<> builder(call_inst);
              Value *v = builder.CreateGlobalStringPtr(StringRef(bbDepString), ".dp_bb_deps");
              CallInst::Create(
                cast<Function>(F.getParent()->getOrInsertFunction("__dp_add_bb_deps", Void, CharPtr)),
                v, "", call_inst
              );
            }
          }
        }
      }
    }
  }
  // errs() << M << "\n";
  return true;
}

bool DPInstrumentationOmission::doInitialization(Module &M){
  Void = const_cast<Type *>(Type::getVoidTy(M.getContext()));
  Int32 = const_cast<IntegerType *>(IntegerType::getInt32Ty(M.getContext()));
  CharPtr = const_cast<PointerType *>(Type::getInt8PtrTy(M.getContext()));
  ReportBB = cast<Function>(M.getOrInsertFunction(
      "__dp_report_bb", 
      Void,
      Int32
    )
  );
  ReportBBPair = cast<Function>(
    M.getOrInsertFunction(
      "__dp_report_bb_pair", 
      Void,
      Int32, 
      Int32
    )
  );
  VNF = new dputil::VariableNameFinder(M);
}

char DPInstrumentationOmission::ID = 0;

static RegisterPass<DPInstrumentationOmission> X("dp-instrumentation-omission", "Run the discopop instrumentation omission analysis. Removes omittable store/load instrumentation calls", false, false);
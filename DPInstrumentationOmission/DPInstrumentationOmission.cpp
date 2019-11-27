#include "DPInstrumentationOmission.h"

#define DEBUG_TYPE "dpop"

#define DP_DEBUG false

STATISTIC(totalInstrumentations, "Total DP-Instrumentations");
STATISTIC(removedInstrumentations, "Disregarded DP-Instructions");

StringRef DPInstrumentationOmission::getPassName() const{
  return "DPInstrumentationOmission";
}

void DPInstrumentationOmission::getAnalysisUsage(AnalysisUsage &AU) const {}

bool DPInstrumentationOmission::runOnFunction(Function &F) {
  DebugLoc dl;
  Value *v;
  
  set<Value*> localValues, writtenValues;
  set<Instruction*> omittableInstructions;

  // Get local and written values (variables)
  for (inst_iterator I = inst_begin(F), SrcE = inst_end(F); I != SrcE; ++I) {
    if (DbgDeclareInst* DbgDeclare = dyn_cast<DbgDeclareInst>(&*I)) {
      localValues.insert(DbgDeclare->getAddress());
    } else if (DbgValueInst* DbgValue = dyn_cast<DbgValueInst>(&*I)) {
      localValues.insert(DbgValue->getValue());
    }
  }
  // Remove values passed outside by reference from localValues
  for (inst_iterator I = inst_begin(F), SrcE = inst_end(F); I != SrcE; ++I) {
    if(CallInst* call_inst = dyn_cast<CallInst>(&*I)){
      if(call_inst->getCalledFunction()->getName() == "__dp_write" || call_inst->getCalledFunction()->getName() == "__dp_read"){
        ++totalInstrumentations;
      }
      for(uint i = 0; i < call_inst->getNumOperands() - 1; ++i){
        v = call_inst->getArgOperand(i);
        localValues.erase(v);
      }
    }
    if(ReturnInst* ret_inst = dyn_cast<ReturnInst>(&*I)){
      localValues.erase(ret_inst->getReturnValue());
    }
    if(isa<StoreInst>(&*I)){
      if(I->getDebugLoc()){
        writtenValues.insert(I->getOperand(1));
        localValues.erase(I->getOperand(0));
      }
    }
  }

  for (inst_iterator I = inst_begin(F), SrcE = inst_end(F); I != SrcE; ++I) {
    if(isa<StoreInst>(&*I) || isa<LoadInst>(&*I)){
      dl = I->getDebugLoc();
      v = I->getOperand(isa<StoreInst>(&*I) ? 1 : 0);
      if(
        localValues.find(v) != localValues.end() && writtenValues.find(v) == writtenValues.end()
        //|| v->getName() == "retval"
      ) omittableInstructions.insert(&*I);
    }
  }

  for(Instruction *I : omittableInstructions){
    Instruction *prev = I->getPrevNode();
    if(CallInst* call_inst = dyn_cast<CallInst>(prev)){
      if(call_inst->getCalledFunction()->getName() == "__dp_write" || call_inst->getCalledFunction()->getName() == "__dp_read"){
        prev->eraseFromParent();
        ++removedInstrumentations;
      }
    }
  }

  return true;
}

char DPInstrumentationOmission::ID = 0;

static RegisterPass<DPInstrumentationOmission> X("dp-instrumentation-omission", "Run the discopop instrumentation omission analysis. Removes omittable store/load instrumentation calls", false, false);
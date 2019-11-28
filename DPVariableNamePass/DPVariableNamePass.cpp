#include "DPVariableNamePass.h"

#define DP_DEBUG false

void DPVariableNamePass::getAnalysisUsage(AnalysisUsage &AU) const {
  AU.setPreservesAll();
}

StringRef DPVariableNamePass::getPassName() const{
  return "DPVariableNamePass";
}
bool DPVariableNamePass::runOnFunction(Function &F){
  if(DP_DEBUG){ 
   errs() << "DPVariableNamePass runOnFunction " << F.getName() << "\n";
    for (BasicBlock &BB : F){
      for (Instruction &I : BB){
        if(isa<StoreInst>(I) || isa<LoadInst>(I)){
          string n = getVarName(&I);
          if(isa<LoadInst>(I)){
            errs () << "Read(";
          } else{
            errs() << "Write(";
          }
          errs() << n << ")\n";
          
        
        }
      }
    }
  }
   return false;
}

bool DPVariableNamePass::doInitialization(Module &M){
  DebugInfoFinder DIF;
  DIF.processModule(M);
  for (auto DI: DIF.types()) {
    if(auto CT = dyn_cast<DICompositeType>(DI)){
      vector<string> v;
      for(auto E: CT->getElements()){
        if(auto DT = dyn_cast<DIDerivedType>(E)){
          v.push_back(DT->getName());
        }
      }
      StructMemberMap.insert({CT->getName(), v});
    }
  }
  return false;
}

string DPVariableNamePass::getVarName(Instruction const *I){
  if(isa<AllocaInst>(I)){
    const Value *v = (const Value*) I;
    if(v->hasName()){
      string r = v->getName().str();
      std::size_t found = r.find(".addr");
      if(found != string::npos){
        return r.erase(found);
      }
      return r;
    }
    return "!";
  }

  if(isa<SExtInst>(I)){
    return getVarName(dyn_cast<Instruction>(I->getOperand(0)));
  }

  if(auto GEPI = dyn_cast<GetElementPtrInst>(I)){
    string r = getVarName(dyn_cast<Instruction>(GEPI->getOperand(0)));
    Type *srcElemT = GEPI->getSourceElementType();

    if(isa<ArrayType>(srcElemT)){
      for(uint i = 2; i < GEPI->getNumOperands(); ++i){
        if(isa<Instruction>(GEPI->getOperand(i))){
          r += "[" + getVarName((Instruction*)GEPI->getOperand(i)) + "]";
        }else if(isa<ConstantInt>(GEPI->getOperand(i))){
          r += "[" + to_string(((ConstantInt*) GEPI->getOperand(i))->getSExtValue()) + "]";
        }
      }
    }else if(StructType *st = dyn_cast<StructType>(srcElemT)){
      int64_t index = 0;
      for(uint i = 2; i < GEPI->getNumOperands(); ++i){
        if(auto iter = dyn_cast<ConstantInt>(GEPI->getOperand(i))){
          index = iter->getSExtValue();
        }
      }
      if(st->hasName()){
        string structTypeName = st->getName().str();
        if(structTypeName.find("struct.") != string::npos){
          structTypeName = structTypeName.erase(0,7);
        }
        if(structTypeName.find("class.") != string::npos){
          structTypeName = structTypeName.erase(0,6);
        }
        if(StructMemberMap.count(structTypeName) > 0){
          r += "." + StructMemberMap[structTypeName][index];
          return r;
        }
      }
      r += ".[" + to_string(index) + "]";
      return r;
    }

    return r;
  }
  
  if(isa<StoreInst>(I) || isa<LoadInst>(I)){
    string r;
    Value *v = I->getOperand(isa<StoreInst>(I) ? 1 : 0);
    if(auto J = dyn_cast<Instruction>(v)){
      if(v->hasName()){
        return getVarName(J);
      }else{
        return "*" + getVarName(J);
      }
    }else if (GEPOperator* gepo = dyn_cast<GEPOperator>(v)){
      if (GlobalVariable* gv = dyn_cast<GlobalVariable>(gepo->getPointerOperand()))
      {
        string r = gv->getGlobalIdentifier();
        Type *st = gepo->getSourceElementType();
        if(StructType *ct = dyn_cast<StructType>(st)){
          string structTypeName = ct->getName().str().erase(0,7);
          int64_t index = 0;
          for (auto it = gepo->idx_begin(), et = gepo->idx_end(); it != et; ++it){
            if(auto iter = dyn_cast<ConstantInt>(*it)){
              index = iter->getSExtValue();
            }
          }
          r += "." + StructMemberMap[structTypeName][index];
          return r;
        }
        
      }
      
    }
  }
  
  const Value *v = (const Value*) I;
  if(v->hasName()){
    return v->getName().str();
  }
  return "n/a";
}

static RegisterPass<DPVariableNamePass> X("dp-variable-name-pass", "DPVariableNamePass", false, false);

char DPVariableNamePass::ID = 0;
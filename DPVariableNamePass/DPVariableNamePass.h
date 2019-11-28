#include "llvm/Support/CommandLine.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/Debug.h"
#include "llvm/IR/DebugLoc.h"
#include "llvm/IR/DebugInfo.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/Operator.h"

#include "llvm/PassAnalysisSupport.h"
#include "llvm/PassSupport.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/GlobalVariable.h"
#include <map>

#include "llvm/PassSupport.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/PassRegistry.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/LegacyPassManager.h"

#define DEBUG_TYPE "dpop"

using namespace llvm;
using namespace std;

class DPVariableNamePass : public FunctionPass {
private:
    map<string, vector<string>> StructMemberMap;
public:
    string getVarName(Instruction const *I);
    static char ID;

    StringRef getPassName() const;
    bool runOnFunction(Function &F);
    void getAnalysisUsage(AnalysisUsage &AU) const;
    bool doInitialization(Module &M);

    DPVariableNamePass() : FunctionPass(ID) {}

};

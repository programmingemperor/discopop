#include "llvm/Support/CommandLine.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/Debug.h"
#include "llvm/IR/InstIterator.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/DebugLoc.h"
#include "llvm/IR/IRBuilder.h"

#include "llvm/PassAnalysisSupport.h"
#include "llvm/PassSupport.h"
#include "llvm/IR/DerivedTypes.h"

#include <set>

using namespace llvm;
using namespace std;

namespace {
    class DPInstrumentationOmission : public FunctionPass {
    private:
        PDG *DG, *CFG;
        AAResults *AAR;
    
    public:
        static char ID;
        StringRef getPassName() const;
        bool runOnFunction(Function &F);
        void getAnalysisUsage(AnalysisUsage &AU) const;

        DPInstrumentationOmission() : FunctionPass(ID) {}
    };
}
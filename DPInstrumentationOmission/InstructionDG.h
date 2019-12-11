#include <string>
#include "InstructionCFG.h"
#include "DPUtils.h"
#include "llvm/Analysis/AliasAnalysis.h"

class InstructionDG : public Graph<Instruction*, bool>
{
	
private:
	dputil::VariableNameFinder *VNF;
	InstructionCFG *CFG;
	AAResults *AAR;
	set<Instruction*> highlightedNodes;

	void recursiveDepChecker(set<Instruction*>& checkedInstructions, Instruction* I, Instruction* C);
	void recursiveDepFinder(set<Instruction*>& checkedInstructions, Instruction* I);

public:
	InstructionDG(dputil::VariableNameFinder *_VNF, InstructionCFG *_CFG, AAResults* _AAR): VNF(_VNF), CFG(_CFG), AAR(_AAR){
        set<Instruction*> checkedInstructions;
		for(auto edge: CFG->getInEdges(CFG->getExit()))
			recursiveDepFinder(checkedInstructions, edge->getSrc()->getItem());
	}

	void highlightNode(Instruction *instr);
	void dumpToDot(const string targetPath);

};
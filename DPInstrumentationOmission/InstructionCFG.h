#include "llvm/IR/Instructions.h"
#include "llvm/IR/DebugLoc.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/Support/Debug.h"
#include <string>
#include "Graph.hpp"

#include "DPUtils.h"

#define ENTRY 1000000
#define EXIT 2000000

class InstructionCFG : public Graph<Instruction*>
{
	
private:
	Node<Instruction*> *entry;
	Node<Instruction*> *exit;
	dputil::VariableNameFinder *VNF;
	set<Instruction*> highlightedNodes;
	void findAndAddFirstRelevantInstructionInSuccessorBlocks(BasicBlock *BB, Instruction* previousInstruction);
    
public:
	InstructionCFG(dputil::VariableNameFinder *_VNF, Function &F): VNF(_VNF){
		entry = Graph::addNode((Instruction*)ENTRY);
		exit = Graph::addNode((Instruction*)EXIT);
		DebugLoc dl;
		Instruction *previousInstruction;
		for (BasicBlock &BB : F){
			// Add current block's store/load/call-instructions and declarations to graph
			previousInstruction = nullptr;
			for (Instruction &I : BB){
				dl = I.getDebugLoc();
				if(!dl) continue;
				DbgDeclareInst* DbgDeclare = dyn_cast<DbgDeclareInst>(&I);
				if(isa<StoreInst>(I) || isa<LoadInst>(I) || DbgDeclare){
					if(previousInstruction != nullptr){
						Graph::addEdge(previousInstruction, &I);
					}
					previousInstruction = &I;
				}
			}
			// Add edges from last instruction in current block to first instruction all the successor blocks
			if(previousInstruction != nullptr) findAndAddFirstRelevantInstructionInSuccessorBlocks(&BB, previousInstruction);
			
		}
        
		// Conect entry/exit nodes
		for(auto node : Graph::getNodes()){
			if(node != entry && node != exit){
                if(Graph::getInEdges(node).empty()){
                    Graph::addEdge(entry, node);
                }else if(Graph::getOutEdges(node).empty()){
                    Graph::addEdge(node, exit);
                }
			}
		}
        
	}
	
	Node<Instruction*> *getEntry() { return entry; }
	Node<Instruction*> *getExit() { return exit; }

	bool isEntryOrExit(Instruction * I) { return Graph::getNode(I) == entry || Graph::getNode(I) == exit;}

	void highlightNode(Instruction *instr);

	void dumpToDot(const string targetPath);

};
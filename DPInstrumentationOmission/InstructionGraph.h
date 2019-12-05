#include "llvm/IR/Instructions.h"
#include "llvm/IR/DebugLoc.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/Support/Debug.h"
#include <string>
#include "Graph.hpp"

#include "DPUtils.h"

#define ENTRY 1000000
#define EXIT 2000000

using namespace llvm;
using namespace std;

class InstructionGraph : public Graph<Instruction*, bool>
{
	
private:

	Node<Instruction*> *entry;
	Node<Instruction*> *exit;
	dputil::VariableNameFinder *VNF;
public:
	InstructionGraph(dputil::VariableNameFinder *_VNF, bool addEntryAndExitNodes = false){
		if(addEntryAndExitNodes){
			entry = Graph::addNode((Instruction*)ENTRY, "label=entry");
			exit = Graph::addNode((Instruction*)EXIT, "label=exit");
		}
		VNF = _VNF;
	}
	~InstructionGraph()
	{
		delete entry;
		delete exit;
	}

	void connectToEntry(Instruction* inst);
	void connectToExit(Instruction* inst);
	Node<Instruction*> *getEntry() { return entry; }
	Node<Instruction*> *getExit() { return exit; }
	bool isEntryOrExit(Instruction * I) { return Graph::getNode(I) == entry || Graph::getNode(I) == exit;}
	Node<Instruction*> *addNode(Instruction *inst);
	Edge<Instruction*, bool> *addEdge(Instruction *src, Instruction *dst, bool safe);
	void highlightNode(Instruction *instr);


};
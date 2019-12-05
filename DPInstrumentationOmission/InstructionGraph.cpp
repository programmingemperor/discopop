//LOCAL IMPORTS
#include "InstructionGraph.h"

//LLVM IMPORTS
#include "llvm/Support/raw_ostream.h"

void InstructionGraph::connectToEntry(Instruction* instr)
{
	Node<Instruction*>* n = getNode(instr);
	Graph::addEdge(entry, n, false);
}

void InstructionGraph::connectToExit(Instruction* instr)
{
	auto n = getNode(instr);
	Graph::addEdge(n, exit, false);
}

Node<Instruction*> *InstructionGraph::addNode(Instruction *instr){
	if(auto n = getNode(instr))
		return n;
	DebugLoc dl = instr->getDebugLoc();
	string dot = "label=\"" + to_string(Graph::getNodes().size()) + "\\n";
	if(isa<StoreInst>(instr) || isa<LoadInst>(instr)){
		if(isa<StoreInst>(instr)) dot += "write(";
		else dot += "read(";
		dot += VNF->getVarName(instr);
		dot += ") ";

		if(DebugLoc dl = instr->getDebugLoc()){
			dot += to_string(dl.getLine());
			dot += ", ";
			dot += to_string(dl.getCol());
		}
		dot += "\"";
	} else if(DbgDeclareInst* DbgDeclare = dyn_cast<DbgDeclareInst>(instr)){
		dot += "declare(" + DbgDeclare->getAddress()->getName().str() + "): ";
		dot += (dl ? to_string(dl.getLine()) : "") + (dl ? "," : "") + (dl ? to_string(dl.getCol()) : "");
		dot += "\",shape=rectangle,fillcolor=wheat,style=filled";
	} else dot += "?";
	return Graph::addNode(instr, dot);
}

void InstructionGraph::highlightNode(Instruction *instr){
	getNode(instr)->setDot(getNode(instr)->getDot() + "style=filled,fillcolor=red");
}

Edge<Instruction*, bool> *InstructionGraph::addEdge(Instruction *src, Instruction *dst, bool safe = false){
	auto srcNode = addNode(src);
	auto dstNode = addNode(dst);
	return Graph::addEdge(srcNode, dstNode, safe);
}



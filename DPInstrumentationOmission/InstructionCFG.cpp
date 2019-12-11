#include "InstructionCFG.h"

void InstructionCFG::findAndAddFirstRelevantInstructionInSuccessorBlocks(BasicBlock *BB, Instruction* previousInstruction) {
	bool hasSuccessors = false;
	for (BasicBlock *S : successors(BB)) {
		hasSuccessors = true;
		for (Instruction &I : *S){
			DebugLoc dl = I.getDebugLoc();
			if(!dl) continue;
			if(isa<StoreInst>(I) || isa<LoadInst>(I)){
			Graph::addEdge(previousInstruction, &I);
			goto next;
			}else if(isa<DbgDeclareInst>(&I)){
			Graph::addEdge(previousInstruction, &I);
			goto next;
			}
		}
		if(S != BB) findAndAddFirstRelevantInstructionInSuccessorBlocks(S, previousInstruction);
		next:;
	}
	if(BB->getName().find("for.end") != string::npos && !hasSuccessors)
		Graph::addEdge(Graph::getNode(previousInstruction), exit);
}

void InstructionCFG::highlightNode(Instruction *instr){
	highlightedNodes.insert(instr);
}

void InstructionCFG::dumpToDot(const std::string targetPath)
{
	// Write the graph to a DOT file
	ofstream dotStream;
	dotStream.open(targetPath);
	dotStream << "digraph{";
	// Create all nodes in DOT format
	for (auto node : getNodes())
	{
		string label;
		DebugLoc dl;
		Instruction* instr;
		if(node == entry){
			label = "label=ENTRY"; goto printNode;
		}
		if(node == exit){
			label = "label=EXIT"; goto printNode;
		}
		label = "label=\"" + to_string(Graph::getNodeIndex(node)) + "\\n";
		instr = node->getItem();
		dl = instr->getDebugLoc();
		if(isa<StoreInst>(instr) || isa<LoadInst>(instr)){
			if(isa<StoreInst>(instr)) label += "write(";
			else label += "read(";
			label += VNF->getVarName(instr);
			label += ") ";

			if(dl){
				label += to_string(dl.getLine());
				label += ", ";
				label += to_string(dl.getCol());
			}
			label += "\"";
			if(highlightedNodes.find(instr) != highlightedNodes.end()){
				label += "\",fillcolor=cyan,style=filled";
			}
		} else if(DbgDeclareInst* DbgDeclare = dyn_cast<DbgDeclareInst>(instr)){
			label += "declare(" + DbgDeclare->getAddress()->getName().str() + "): ";
			label += (dl ? to_string(dl.getLine()) : "") + (dl ? "," : "") + (dl ? to_string(dl.getCol()) : "");
			label += "\",shape=rectangle,fillcolor=wheat,style=filled";
		} else label += "?";

		printNode:
		dotStream << "\t\"" << getNodeIndex(node) 
			<< "\" [" << label << "];\n"
		;

	}
	dotStream << "\n\n";
	
	// Now print all outgoing edges and their labels
	for (auto e : getEdges())
	{
		dotStream << "\t\"" << getNodeIndex(e->getSrc()) 
			<< "\" -> \"" << getNodeIndex(e->getDst()) 
			<< "\";\n"
		;
	}
	dotStream << "}";
	dotStream.close();
}
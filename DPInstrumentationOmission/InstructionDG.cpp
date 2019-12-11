#include "InstructionDG.h"

#include "DPUtils.h"


void InstructionDG::recursiveDepChecker(set<Instruction*>& checkedInstructions, Instruction* I, Instruction* C){
	checkedInstructions.insert(C);
	if(CFG->isEntryOrExit(C)) return;

	Value *V = I->getOperand(isa<StoreInst>(I) ? 1 : 0);
	if (DbgDeclareInst* DbgDeclare = dyn_cast<DbgDeclareInst>(C))
		if(DbgDeclare->getAddress() == V)
			return;
	else if (DbgValueInst* DbgValue = dyn_cast<DbgValueInst>(C))
	if(DbgValue->getValue() == V)
		return;
	
	Value *W = C->getOperand(isa<StoreInst>(C) ? 1 : 0);

	if(V == W && (isa<StoreInst>(I) || isa<StoreInst>(C))){
		Graph::addEdge(I, C);
		return;
	}
	for(auto edge: CFG->getInEdges(C))
	if(find(checkedInstructions.begin(), checkedInstructions.end(), edge->getSrc()->getItem()) == checkedInstructions.end())
		recursiveDepChecker(checkedInstructions, I, edge->getSrc()->getItem());
}

void InstructionDG::recursiveDepFinder(set<Instruction*>& checkedInstructions, Instruction* I){
	if(CFG->isEntryOrExit(I)) return;
	checkedInstructions.insert(I);
	for(auto edge: CFG->getInEdges(I)){
	if(isa<StoreInst>(I) || isa<LoadInst>(I)){
		Graph::addNode(I);
		set<Instruction*> checkedInstructions2;
		recursiveDepChecker(checkedInstructions2, I, edge->getSrc()->getItem());
	}
	if(find(checkedInstructions.begin(), checkedInstructions.end(), edge->getSrc()->getItem()) == checkedInstructions.end())
		recursiveDepFinder(checkedInstructions, edge->getSrc()->getItem());
	}
}

void InstructionDG::highlightNode(Instruction *instr){
	highlightedNodes.insert(instr);
}

string InstructionDG::edgeToDPDep(Edge<Instruction*> *e){
    Instruction *I = e->getSrc()->getItem();
    Instruction *J = e->getDst()->getItem();
    string depType = (isa<LoadInst>(I) ? string("R") : string("W")) + "A" + (isa<LoadInst>(J) ? string("R") : string("W"));

    return to_string(fid) + ":"
      + to_string(I->getDebugLoc().getLine()) + " "
      + depType + " "
      + to_string(fid) + ":"
      + to_string(J->getDebugLoc().getLine()) + "|"
      + VNF->getVarName(I)
    ;
}

void InstructionDG::dumpToDot(const string targetPath)
{

	// Write the graph to a DOT file
	ofstream dotStream;
	dotStream.open(targetPath);
	
	dotStream << "digraph g {\n";
	// Create all nodes in DOT format
	for (auto node : getNodes())
	{
		string label = "label=\"" + to_string(Graph::getNodeIndex(node)) + "\\n";
		Instruction* instr = node->getItem();
		DebugLoc dl = instr->getDebugLoc();
		if(isa<StoreInst>(instr)) label += "write(";
		else label += "read(";
		label += VNF->getVarName(instr);
		label += ") ";

		if(DebugLoc dl = instr->getDebugLoc()){
			label += to_string(dl.getLine());
			label += ", ";
			label += to_string(dl.getCol());
		}
		label += "\"";
		if(highlightedNodes.find(instr) != highlightedNodes.end()){
			label += "\",fillcolor=cyan,style=filled";
		}

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
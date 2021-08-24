# implementing vectorization opportunity
from ..PETGraphX import *
from .PatternInfo import PatternInfo
from ..utils import *
from typing import List, Dict, Set, Tuple
from ..parser import *

class SIMDInfo(PatternInfo):
    pass

def func_in_loop(pet:PETGraphX, node:CUNode) -> bool:
    """ Determine if a Loop Node has a function call

    :param pet: PET Graph
    :param node: CU Node
    :return: true if the loop has no function call
    """
    if node.type == NodeType.LOOP:
        loop_child = find_subnodes(pet, node, EdgeType.CHILD)
        if loop_child != []:
            for lc in loop_child:
                if lc.type == NodeType.FUNC:
                    return False
                else:
                    func_in_loop(pet, lc)
    return True

def loop_no_func(pet:PETGraphX) -> List:
    """ All loops that have no function call

        :param pet: PET Graph
        :return: List of Loop Nodes that have no Func Node in it's child node
    """
    nodes = []
    for node in pet.all_nodes(NodeType.LOOP):
        if func_in_loop(pet, node):
            nodes.append[node]
    return nodes


def main():
    pet = PETGraphX.from_parsed_input(
        *parse_inputs("Data.xml", "dp_run_dep.txt", "loop_counter_output.txt", "reduction.txt"))
    list1 = loop_no_func(pet)

    for loop in list1:
        print("start line : {loop.start_line}")
        print("end line : {loop.end_line}\n")
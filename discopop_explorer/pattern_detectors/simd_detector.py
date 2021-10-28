# implementing vectorization opportunity
from ..PETGraphX import *
from .PatternInfo import PatternInfo
from ..parser import *
from ..utils import *
from do_all_detector import __detect_do_all
from typing import List, Dict, Set, Tuple
from pattern_detectors.do_all_detector import __detect_do_all

class SIMDInfo(PatternInfo):
    """ Class, that contains do-across detection result
    """

    def __init__(self, pet: PETGraphX, node: CUNode):
        fp, p, lp, s, r = classify_loop_variables(pet, node)
        self.private = p
        self.last_private = lp
        self.reduction = r

    def __str__(self):
        inner = innermost_loop(self.pet, self.node)
        fpi, pi, lpi, si, ri = classify_loop_variables(self.pet, inner)
        if self.node.do_all and nested(self.pet, self.node):
            collapse = collapse_counter(self.pet, self.node)
            return f'SIMD parallelization opportunity' \
                   f'Option 1' \
                   f'Start line: {self.start_line}\n' \
                   f'End line: {self.end_line}\n' \
                   f'pragma: "#pragma omp simd collapse({collapse})"\n' \
                   f'private: {[v.name for v in self.private]}\n' \
                   f'reduction: {[v.name for v in self.reduction]}\n' \
                   f'last private: {[v.name for v in self.last_private]}'\
                   f'Option 2' \
                   f'Start line: {inner.start_line}\n' \
                   f'End line: {inner.end_line}\n' \
                   f'pragma: "#pragma omp simd "\n' \
                   f'private: {[v.name for v in fpi]}\n' \
                   f'reduction: {[v.name for v in ri]}\n' \
                   f'last private: {[v.name for v in lpi]}'

        else:
            return f'SIMD parallelization opportunity' \
                   f'Start line: {inner.start_line}\n' \
                   f'End line: {inner.end_line}\n' \
                   f'pragma: "#pragma omp simd "\n' \
                   f'private: {[v.name for v in fpi]}\n' \
                   f'reduction: {[v.name for v in ri]}\n' \
                   f'last private: {[v.name for v in lpi]}'


def __nested_help(subnodes: List[CUNode]) -> bool:
    """ Help function to determine if the list of CU Node still fulfills the condition of a perfectly nested loop

        :param subnodes: List of CU Nodes
        :return: true, if no loop or if only one loop exist and no cu node exist
    """
    loop = 0
    cu = 0
    for sn in subnodes:
        if sn.type == NodeType.LOOP:
            loop = loop + 1
        else:
            cu = cu + 1

    if (cu != 0) and (loop != 0):
        return False
    elif loop > 1:
        return False
    else:
        return True

def __contain_loop(subnodes: List[CUNode]):
    """ Determine if in the list of CU Node contain any Loop Node

        :param subnodes: List of CU Nodes
        :return: true if the list contains Loop Node and return that Loop Node
    """
    contain = False
    loop = None
    for sn in subnodes:
        if sn.type == NodeType.LOOP:
            loop = sn
            contain = True

    return contain, loop

def nested(pet:PETGraphX, node:CUNode) -> bool:
    """ Determine if a loop is perfectly nested

        :param pet: PET Graph
        :param node: CU Node
        :return: true if the loop has no function call
    """
    subnodes = find_subnodes(pet, node, EdgeType.CHILD)
    while len(subnodes) != 0:
        temp: List[CUNode] = []
        for sn in subnodes:
            if (node.start_line != sn.start_line) and (node.end_line != sn.start_line) and (sn.start_line != sn.end_line):
                temp.append(sn)

        if __nested_help(temp):
            contain, loop = __contain_loop(subnodes)
            if contain:
                subnodes = find_subnodes(pet, loop, EdgeType.CHILD)
            else:
                return True
        else:
            return False

    return True

def outer_loop(pet:PETGraphX) -> List[CUNode]:
    """ All outer loop nodes

        :param pet: PET Graph
        :return: List of outer loop nodes
    """
    outer_loop: List[CUNode] = []
    for loop in pet.all_nodes(NodeType.LOOP):
        parents = [pet.node_at(edge[0]) for edge in pet.in_edges(loop.id, EdgeType.CHILD)]
        temp = True
        for p in parents:
            if p.type == NodeType.LOOP:
                temp = False
        if temp:
            outer_loop.append(loop)
    return outer_loop

def collapse_counter(pet:PETGraphX, node:CUNode) -> int:
    """ Count the number of loops that could be collapsed

        :param pet: PET Graph
        :param node: Outermost loop node of a perfectly nested loop
        :return: the number of loop that could be collapsed
    """

    subnodes = find_subnodes(pet, node, EdgeType.CHILD)
    counter = 0
    while len(subnodes) != 0:
        temp: List[CUNode] = []
        for sn in subnodes:
            if (node.start_line != sn.start_line) and (node.end_line != sn.start_line) and (
                    sn.start_line != sn.end_line):
                temp.append(sn)
        contain, loop = __contain_loop(temp)
        if contain:
            counter = counter + 1
            subnodes = find_subnodes(pet, loop, EdgeType.CHILD)
        else:
            return counter + 1
    return 0


def innermost_loop(pet:PETGraphX, node:CUNode):
    """ The innermost loop of a perfectly nested loop

        :param pet: PET Graph
        :param node: Outermost loop node
        :return: Innermost loop Node of an outermost loop
    """

    if collapse_counter(pet, node) == 1:
        return node
    else:
        subnodes = find_subnodes(pet, node, EdgeType.CHILD)
        loop_node = None
        while len(subnodes) != 0:
            temp: List[CUNode] = []
            for sn in subnodes:
                if (node.start_line != sn.start_line) and (node.end_line != sn.start_line) and (sn.start_line != sn.end_line):
                    temp.append(sn)
            contain, loop = __contain_loop(temp)
            if contain:
                loop_node = loop
                subnodes = find_subnodes(pet, loop, EdgeType.CHILD)
            else:
                return loop_node

def __func_in_cu(pet:PETGraphX, node:CUNode)->bool:
    """ Determine if a CU node has a child, that is a FUNC node

        :param pet: PET Graph
        :param node: CU Node
        :return: true, if CU node has a child, that is a FUNC node
    """

    if node.start_line == node.end_line:
        return False
    else:
        subnodes = find_subnodes(pet, node, EdgeType.CHILD)
        for node in subnodes:
            if node.type == NodeType.FUNC:
                return True
        return False

def loop_no_func(pet:PETGraphX, cunode:CUNode) -> bool:
    """ Determine if a LOOP node has a child, that is a FUNC node

        :param pet: PET Graph
        :param node: LOOP node
        :return: true, if a LOOP node has no child, that is a FUNC node
    """
    subnodes = find_subnodes(pet, cunode, EdgeType.CHILD)
    for node in subnodes:
        if node.type == NodeType.CU and __func_in_cu(pet, node):
            return False
        elif node.type == NodeType.LOOP:
            temp = find_subnodes(pet, node, EdgeType.CHILD)
            subnodes.extend(temp)
    return True

def run_detection(pet:PETGraphX) -> List[SIMDInfo]:

    result = []
    for node in outer_loop(pet):
        if __detect_do_all(pet, node):
            node.do_all = True
            if not node.reduction and node.loop_iterations > 0:
                result.append(SIMDInfo(pet, node))
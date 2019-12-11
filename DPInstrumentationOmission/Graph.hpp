#ifndef GRAPH_HPP
#define GRAPH_HPP
// #define DEBUG_GRAPH_HPP

//STL IMPORTS
#include <map>
#include <vector>
#include <set>
#include <stack>
#include <list>
#include <iostream>
#include <utility>
#include <algorithm>
#include <iterator>
#include <fstream>


using namespace std;

template<typename NodeT>
class Node
{
private:
	NodeT item;
public:
	Node(NodeT _item) 
		: item(_item) {}
	~Node() {};
	
	NodeT getItem() const { return item; }
};

template<typename NodeT, typename EdgeT>
class Edge
{
private:
	Node<NodeT> *src;
	Node<NodeT> *dst;
	EdgeT e;

public:
	Edge(Node<NodeT> *_src, Node<NodeT> *_dst, EdgeT _e)
		: src(_src)
		, dst(_dst)
		, e(_e){};
	~Edge() {};

	Node<NodeT> *getSrc() const { return src; }
	Node<NodeT> *getDst() const { return dst; }
	EdgeT get(){ return e; }
};

template<typename NodeT, typename EdgeT>
class Graph
{
private:
	std::list<Node<NodeT>*> nodesList;
	unsigned nextIntKey = 0;
	//This stores a map from object of type T to it's respective pair (Key, Node)
	std::map<NodeT, std::pair<int, Node<NodeT>* > > nodes;
	std::list<Edge<NodeT, EdgeT>* > edgesList;
	//This map stores all the outcoming edges from node of type T
	std::map<Node<NodeT>*, std::set<Edge<NodeT, EdgeT>*>> outEdges;
	//This map stores all the incoming edges to node of type T
	std::map<Node<NodeT>*, std::set<Edge<NodeT, EdgeT>*>> inEdges;

public:
	Graph() {};
	~Graph()
	{
		for (auto &n : nodesList) delete n;
		for (auto &e : edgesList) delete e;
	}

	Node<NodeT> *operator[](NodeT item) const { return getNode(item); }

	Node<NodeT> *addNode(NodeT item)
	{
		if (nodes.count(item) == 0)
		{
			Node<NodeT> *node = new Node<NodeT>(item);
			nodes[item] = std::make_pair<int,  Node<NodeT>* >(nextIntKey, std::move(node));
			nodesList.push_back(node);
			nextIntKey++;
			return node;
		}
		else
		{
			#ifdef DEBUG_GRAPH_HPP
				std::cout << "\nTrying to add an already added item.\n";
			#endif
			return nodes.find(item)->second.second;
		}
	}

	Node<NodeT> *getNode(NodeT item)
	{
		if (nodes.count(item) == 0) return nullptr;
		return nodes.find(item)->second.second;
	}

	Node<NodeT> *getNodeByIndex(const int index) const
	{
		for (const auto &pair_ : nodes)
		{
			if (pair_.second.first == index)
			{
				return pair_.second.second;
			}
		}
		return nullptr;	
	}

	int getNodeIndex(NodeT item) const
	{
		if (nodes.count(item) == 0)
			return -1;
		return nodes.find(item)->second.first;
	}

	int getNodeIndex(Node<NodeT> *node) const
	{
		return getNodeIndex(node->getItem());
	}

	std::list<Node<NodeT>*> getNodes() const
	{
		return nodesList;
	}

	Edge<NodeT, EdgeT> *addEdge(Node<NodeT> *src, Node<NodeT> *dst, EdgeT e)
	{
		for(Edge<NodeT, EdgeT> *ed : outEdges[src]){
			if(ed->getDst() == dst && ed->get() == e){
				return nullptr;
			}
		}

		Edge<NodeT, EdgeT> *edge = new Edge<NodeT, EdgeT>(src, dst, e);
		outEdges[src].insert(edge);
		inEdges[dst].insert(edge);
		edgesList.push_back(edge);
		return edge;
	}

	Edge<NodeT, EdgeT> *addEdge(NodeT src, NodeT dst, EdgeT e)
	{
		Node<NodeT> *src_ = getNode(src);
		Node<NodeT> *dst_ = getNode(dst);

		if(src_ == nullptr) src_ = addNode(src);
		if(dst_ == nullptr) dst_ = addNode(dst);

		return addEdge(src_, dst_, e);
	}

	std::set<Edge<NodeT, EdgeT>*> getInEdges(Node<NodeT> *node) 
	{
		std::set<Edge<NodeT, EdgeT>*> inEdges_;
		if (inEdges.find(node) != inEdges.end())
			inEdges_ = inEdges[node];
		
		return inEdges_;
	}

	std::set<Edge<NodeT, EdgeT>*> getInEdges(NodeT item)
	{
		Node<NodeT> *node = getNode(item);
		return getInEdges(node);
	}

	std::set<Edge<NodeT, EdgeT>*> getOutEdges(Node<NodeT> *node) 
	{
		std::set<Edge<NodeT, EdgeT>*> outEdges_;
		if (outEdges.count(node) != 0)
			return outEdges[node];
		return outEdges_;
	}

	std::set<Edge<NodeT, EdgeT>*> getOutEdges(NodeT item)
	{	
		return getOutEdges(getNode(item));
	}

	void removeEdge(Edge<NodeT, EdgeT>* e)
	{
		auto out = e->getSrc();
		auto in = e->getDst();
		edgesList.remove(e);
		outEdges[out].erase(e);
		inEdges[in].erase(e);
	}

	std::list<Edge<NodeT, EdgeT>* > getEdges() const
	{
		return edgesList;
	}

	int size() const { return nextIntKey; }
};

#endif // GRAPH_HPP

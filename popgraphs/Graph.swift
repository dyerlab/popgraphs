//
//  Graph.swift
//  popgraphs
//
//  Created by Rodney Dyer on 3/3/17.
//  Copyright © 2017 Rodney Dyer. All rights reserved.
//

import Foundation

public class Graph {
    private var topology: Array<Node>
    
    init() {
        self.topology = Array<Node>()
    }
    
    func addVertex(label: String )  {
        var childNode: Node = Node()
        childNode.label = label
        self.topology.append(childNode)
    }
    
    func addEdge( source: Node, neighbor: Node, weight: Double ){
        var newEdge = Edge()
        
        newEdge.neighbor = neighbor
        newEdge.weight = weight
        source.neighbors.append( newEdge )
    }
}

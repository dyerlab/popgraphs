//
//  Edge.swift
//  popgraphs
//
//  Created by Rodney Dyer on 3/3/17.
//  Copyright © 2017 Rodney Dyer. All rights reserved.
//

import Foundation

enum EDGE_TYPE {
    case UNDIRECTED
    case DIRECTED
}


public class Edge {
    
    var neighbor: Node
    var weight: Double
    
    init() {
        self.weight = 0.0
        self.neighbor = Node()
    }
}

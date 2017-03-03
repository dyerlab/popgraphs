//
//  Node.swift
//  popgraphs
//
//  Created by Rodney Dyer on 3/2/17.
//  Copyright © 2017 Rodney Dyer. All rights reserved.
//

import Cocoa
import Foundation

public class Node {
    var label: String?
    var neighbors: Array<Edge>
    
    var degree: Int {
        get {
            return self.neighbors.count
        }
    }
    
    init() {
        self.neighbors = Array<Edge>()
    }
}

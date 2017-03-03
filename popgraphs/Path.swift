//
//  Path.swift
//  popgraphs
//
//  Created by Rodney Dyer on 3/3/17.
//  Copyright © 2017 Rodney Dyer. All rights reserved.
//

import Foundation

class Path {
    
    var total: Double!
    var destination: Node
    var previous: Path!
    
    init() {
        self.destination = Node()
    }
}

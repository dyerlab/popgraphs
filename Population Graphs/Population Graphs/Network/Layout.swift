
//
//  Layout.swift
//  Population Graphs
//
//  Created by Rodney Dyer on 1/29/18.
//  Copyright © 2018 Rodney Dyer. All rights reserved.
//

import Foundation
import SceneKit


func layoutSpring( graph: inout Graph ) {
    var coords = [SCNVector3]()
    for node in graph.nodes {
        coords.append(node.position)
    }
    
}

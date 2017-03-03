//
//  GraphAlgorithms.swift
//  popgraphs
//
//  Created by Rodney Dyer on 3/3/17.
//  Copyright © 2017 Rodney Dyer. All rights reserved.
//

import Foundation

func twoNodeDijkstra( source: Node, destination: Node ) -> Path? {
    
    var frontier: Array<Path> = Array<Path>()
    var finalPaths: Array<Path> = Array<Path>()
    var bestPath: Path = Path()
    
    
    // Develop the frontier
    for e in source.neighbors {
        var newPath: Path = Path()
        newPath.destination = e.neighbor
        newPath.previous = nil
        newPath.total = e.weight
        
        frontier.append(newPath)
    }
    
    // iterate through them to find the best path
    
    
    while frontier.count != 0 {
        
        bestPath = Path()
        var pathIndex: Int = 0
        
        for x in 0..<frontier.count {
            let itemPath: Path = frontier[x]
            if (bestPath.total == nil ) || (itemPath.total < bestPath.total ) {
                bestPath = itemPath
                pathIndex = x
            }
        }
    }
}

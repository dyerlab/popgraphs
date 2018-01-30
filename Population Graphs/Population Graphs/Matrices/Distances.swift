//
//  Distances.swift
//  Population Graphs
//
//  Created by Rodney Dyer on 1/30/18.
//  Copyright © 2018 Rodney Dyer. All rights reserved.
//

import Foundation
import SceneKit




func euclideanDistance( coords: Array<SCNVector3> ) -> Matrix {
    let N = coords.count
    let ret = Matrix(rows: N, cols: N)
    
    for i in 0..<N {
        for j in (i+1)..<N {
            let vec = coords[i] - coords[j]
            ret[i,j] = vec.length()
        }
    }
    
    return ret
}

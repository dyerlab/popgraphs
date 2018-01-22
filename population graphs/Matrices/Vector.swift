//
//  Vector.swift
//  population graphs
//
//  Created by Rodney Dyer on 1/22/18.
//  Copyright © 2018 Rodney Dyer. All rights reserved.
//

import Foundation

func -( left: [Double], right: [Double] ) -> [Double] {
    let N = left.count
    assert(N == right.count)
    
    var ret = Array(repeating:0.0, count:N)
    
    for i in 0..<N {
        ret[i] = left[i] - right[i]
    }
    
    return ret
}


func +( left: [Double], right: [Double] ) -> [Double] {
    let N = left.count
    assert(N == right.count)
    
    var ret = Array(repeating:0.0, count:N)
    
    for i in 0..<N {
        ret[i] = left[i] + right[i]
    }
    
    return ret
}



//
//  Matrix.swift
//  population graphs
//
//  Created by Rodney Dyer on 1/22/18.
//  Copyright © 2018 Rodney Dyer. All rights reserved.
//

import Foundation
import Accelerate

class Matrix {
    var cols: Int
    var rows: Int
    var matrix: [Double]
    
    init( rows: Int, cols: Int, vals: Double = 0.0 ) {
        self.rows = rows
        self.cols = cols
        self.matrix = Array(repeating:vals, count:rows*cols)
    }
    
    subscript( row: Int, col: Int ) -> Double {
        get {
            return matrix[ self.cols * row + col ]
        }
        set {
            matrix[ self.cols * row + col ] = newValue
        }
    }
    
}



extension Matrix : CustomStringConvertible {
    var description : String {
        get {
            var ret = "Matrix:\n"
            for i in 0..<rows {
                for j in 0..<cols {
                    ret = "\(ret) \(self[i,j])"
                }
                ret += "\n"
            }
            return ret
        }
    }
}



extension Matrix : Equatable {
    public static func ==(left: Matrix, right: Matrix ) -> Bool {
        return left.cols == right.cols && left.rows == right.rows && left.matrix == right.matrix
    }
}

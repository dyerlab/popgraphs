//
//  Node.swift
//  popgraphs
//
//  Created by Rodney Dyer on 3/2/17.
//  Copyright © 2017 Rodney Dyer. All rights reserved.
//

import Cocoa
import Foundation

class DLNode {
    var coord: CGPoint
    var color: NSColor
    var size:  CGSize
    var label: String
    
    init() {
        self.label = "NA"
        self.color = NSColor.red
        self.coord = CGPoint(x: 0.0, y: 0.0)
        self.size = CGSize(width: 2, height: 2)
    }
}

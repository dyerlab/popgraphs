//
//  GraphView.swift
//  popgraphs
//
//  Created by Rodney Dyer on 3/2/17.
//  Copyright © 2017 Rodney Dyer. All rights reserved.
//

import Cocoa

@IBDesignable

class GraphView: NSView {

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        // Drawing code here.
        
        NSColor.white.setFill()
        NSRectFill(bounds)
    }
    
}

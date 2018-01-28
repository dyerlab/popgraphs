//
//  GraphWindowController.swift
//  popgraph-viewer
//
//  Created by Rodney Dyer on 1/27/18.
//  Copyright © 2018 Rodney Dyer. All rights reserved.
//

import Cocoa

class GraphWindowController: NSWindowController {

    convenience init() {
        self.init(windowNibName: NSNib.Name(rawValue: "GraphWindowController") )
    }
    override func windowDidLoad() {
        super.windowDidLoad()

        window?.titleVisibility = .hidden
        
    }
    
}

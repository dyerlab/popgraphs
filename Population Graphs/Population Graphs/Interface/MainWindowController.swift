//
//  GraphWindowController.swift
//  popgraph-viewer
//
//  Created by Rodney Dyer on 1/27/18.
//  Copyright © 2018 Rodney Dyer. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    var stuff : [Double]
    
    
    convenience init() {
        self.init(windowNibName: NSNib.Name(rawValue: "MainWindowController"), bundle: nil )
        print("NSWC init")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented for mainWindowController")
    }
    
    
    override func windowDidLoad() {
        super.windowDidLoad()
        print("NSWC windowDidLoad")
    }
    
    

    
}

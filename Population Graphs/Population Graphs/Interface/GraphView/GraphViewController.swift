//
//  GraphViewController.swift
//  popgraph-viewer
//
//  Created by Rodney Dyer on 1/27/18.
//  Copyright © 2018 Rodney Dyer. All rights reserved.
//

import Cocoa

class GraphViewController: NSViewController {

    @IBOutlet var graphView: GraphView!
    
    
    
    convenience init() {
        self.init(nibName: NSNib.Name(rawValue: "GraphViewController"), bundle: nil )
        print("GraphViewController::init ")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("in GraphViewController::viewDidLoad")
        
    }
    
}

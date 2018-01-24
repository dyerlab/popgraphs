//
//  GraphViewController.swift
//  population graphs
//
//  Created by Rodney Dyer on 1/23/18.
//  Copyright © 2018 Rodney Dyer. All rights reserved.
//

import Cocoa
import SceneKit

class GraphViewController: NSViewController {

    @IBOutlet weak var graphView: GraphView!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        print("view did load")
        
        
    }
    
}

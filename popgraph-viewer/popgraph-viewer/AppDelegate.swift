//
//  AppDelegate.swift
//  popgraph-viewer
//
//  Created by Rodney Dyer on 1/27/18.
//  Copyright © 2018 Rodney Dyer. All rights reserved.
//

import Cocoa
import SceneKit


@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    let graphWindowController = GraphWindowController()
    

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        graphWindowController.showWindow( nil )
        
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}


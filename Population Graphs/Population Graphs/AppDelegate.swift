//
//  AppDelegate.swift
//  Population Graphs
//
//  Created by Rodney Dyer on 1/29/18.
//  Copyright © 2018 Rodney Dyer. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    let mainWindowController = MainWindowController()
    

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        mainWindowController.showWindow(nil)
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}


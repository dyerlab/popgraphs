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
    var graph = makeLopho()
    
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        mainWindowController.showWindow(nil)
        print("AppDelegate::appDidFinishLaunching")
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
        print("AppDelegate::appWillTerminate")
    }

    @IBAction func makeLophoGraph(_ sender: AnyObject) {
        print("newDoc baby!")
    }

}


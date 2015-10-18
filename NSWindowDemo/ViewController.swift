//
//  ViewController.swift
//  NSWindowDemo
//
//  Created by CJS on 15/10/18.
//  Copyright © 2015年 CJS. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func toggleFullScreen(sender: NSButton) {
        let application = NSApplication.sharedApplication()
        let mainWindow = application.mainWindow
        mainWindow!.collectionBehavior = NSWindowCollectionBehavior.FullScreenPrimary
        mainWindow!.toggleFullScreen(sender)
    }

    @IBAction func toggleToolbar(sender: NSButton) {
        let application = NSApplication.sharedApplication()
        let mainWindow = application.mainWindow
        mainWindow?.toggleToolbarShown(sender)
    }
    @IBAction func forEditField(sender: NSButton) {
        let application = NSApplication.sharedApplication()
        let mainWindow = application.mainWindow
        mainWindow?.fieldEditor(true, forObject: sender)
        mainWindow?.showsToolbarButton = false
        mainWindow?.allowsToolTipsWhenApplicationIsInactive = false
    }
}


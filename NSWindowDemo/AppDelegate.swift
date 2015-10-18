//
//  AppDelegate.swift
//  NSWindowDemo
//
//  Created by CJS on 15/10/18.
//  Copyright © 2015年 CJS. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        let application = NSApplication.sharedApplication()
        print("windows:\(application.windows)")
        print("mainWindow:\(application.mainWindow)")
        print("keyWindow:\(application.keyWindow)")
        let window = application.windows[0]
        print("is key:\(window.keyWindow)")
        print("is main:\(window.mainWindow)")
        print("windowController:\(window.windowController)")
//        windowFrameTest(window)
        windowToolbarTest(window)
    }
    
    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    
    // MARK window.styleMask Test
    func windowStyleMaskTest(window: NSWindow){
        // NSBorderlessWindowMask  ---> no Menu
        // NSTitledWindowMask  ---> no left three button
        // NSClosableWindowMask  ---> the same of NSBorderlessWindowMask
        // NSMiniaturizableWindowMask   ---> the same of NSBorderlessWindowMask
        // NSResizableWindowMask  ---> the same of NSBorderlessWindowMask but can resize window
        // NSTexturedBackgroundWindowMask  ---> the same of NSBorderlessWindowMask but background is gray
        window.styleMask = NSTexturedBackgroundWindowMask
    }
    
    func windowFrameTest(window: NSWindow){
//        window.setFrameOrigin(NSPoint(x: 0, y: 100))
//        window.setFrameTopLeftPoint(NSPoint(x: 0, y: 1000))
        
        print("minSize:\(window.minSize)")
        print("maxSize:\(window.maxSize)")
        print("content minSize:\(window.contentMinSize)")
        print("content maxSize:\(window.contentMaxSize)")
        print("window level:\(window.level)")
    }
    
    func windowToolbarTest(window: NSWindow){
        print("window toolbar isShow:\(window.toolbar)")
        print("window child count:\(window.childWindows?.count)")
        print("window parentWindow:\(window.parentWindow)")
    }
    
}


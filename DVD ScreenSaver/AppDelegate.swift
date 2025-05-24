//
//  AppDelegate.swift
//  DVD ScreenSaver
//
//  Created by RieN7 on 2025-05-24.
//

import SwiftUI
import SkyLightWindow

class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow?
    var monitor: Any?

    func applicationDidFinishLaunching(_ notification: Notification) {
        let screenSize = NSScreen.main?.frame.size ?? CGSize(width: 1440, height: 900)
        let contentRect = NSRect(
            x: 0,
            y: 0,
            width: screenSize.width,
            height: screenSize.height
        )
        window = MainWindow(contentRect: contentRect) {
            ContentView(windowFrame: contentRect)
                .moveToSky()
        }
        window?.makeKeyAndOrderFront(nil)
        NSApp.setActivationPolicy(.regular)
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        NSApp.setActivationPolicy(.accessory)
        return false
    }
}

//
//  DVD_ScreenSaverApp.swift
//  DVD ScreenSaver
//
//  Created by RieN7 on 2025-05-24.
//

import SwiftUI

class MainWindow<Content: View>: NSWindow {
    init(
        contentRect: NSRect,
        view: () -> Content
    ) {
        super.init(
            contentRect: contentRect,
            styleMask: [
                .nonactivatingPanel,
                .fullSizeContentView,
            ],
            backing: .buffered,
            defer: true
        )

        isOpaque = true

        backgroundColor = .clear
        hasShadow = false

        collectionBehavior.insert(.fullScreenAuxiliary)

        titleVisibility = .hidden
        titlebarAppearsTransparent = true

        isMovableByWindowBackground = false

        hidesOnDeactivate = false

        standardWindowButton(.closeButton)?.isHidden = true
        standardWindowButton(.miniaturizeButton)?.isHidden = true
        standardWindowButton(.zoomButton)?.isHidden = true

        contentView = NSHostingView(
            rootView: view()
                .ignoresSafeArea())
    }
}

//
//  ContentView.swift
//  DVD ScreenSaver
//
//  Created by RieN7 on 2025-05-24.
//

import SwiftUI

struct ContentView: View {
    var windowFrame: NSRect
    @State private var position = CGPoint(x: 0, y: 0)
    @State private var velocity = CGVector(dx: 2, dy: 2)
    @State private var color = Color.black
    let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()

    var body: some View {
        Image("dvd_logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 96)
            .symbolRenderingMode(.monochrome)
            .foregroundStyle(color)
            .position(position)
            .onTapGesture {
                NSApp.terminate(nil)
            }
            .onReceive(timer) { _ in
                let maxX = windowFrame.maxX - 48
                let maxY = windowFrame.maxY - 28
                let minX = windowFrame.minX + 48
                let minY = windowFrame.minY + 28

                var newX = position.x + velocity.dx
                var newY = position.y + velocity.dy
                var newVelocity = velocity

                if newX <= minX || newX >= maxX {
                    newVelocity.dx *= -1
                    newX = max(minX, min(newX, maxX))
                    color = .random
                }
                if newY <= minY || newY >= maxY {
                    newVelocity.dy *= -1
                    newY = max(minY, min(newY, maxY))
                    color = .random
                }
                position = CGPoint(x: newX, y: newY)
                velocity = newVelocity
            }
    }
}

extension Color {
    static var random: Color {
        let r: Double = .random(in: 0...1)
        let g: Double = .random(in: 0...1)
        let b: Double = .random(in: 0...1)
        return Color(red: r, green: g, blue: b)
    }
}

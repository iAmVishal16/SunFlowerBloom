//
//  Wave.swift
//  SunFlowerBloom
//
//  Created by Vishal Paliwal on 06/05/23.
//

import SwiftUI

struct Wave: Shape {
    var waveHeight: CGFloat
    var phase: Angle
    
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 0, y: rect.maxY))
            for x in stride(from: 0, through: rect.width, by: 1) {
                let relativeX = x / 50
                let sine = sin(relativeX + CGFloat(phase.radians))
                path.addLine(to: CGPoint(x: x, y: waveHeight * sine))
            }
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
            path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        }
    }
}


struct Wave_Previews: PreviewProvider {
    static var previews: some View {
        Wave(waveHeight: 100, phase: .degrees(90))
            .previewLayout(.sizeThatFits)
    }
}

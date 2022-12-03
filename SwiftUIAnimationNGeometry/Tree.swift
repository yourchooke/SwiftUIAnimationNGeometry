//
//  Tree.swift
//  SwiftUIAnimationNGeometry
//
//  Created by Olga Yurchuk on 25.11.2022.
//

import SwiftUI

struct Tree: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(height,width)
            let indent = size * 0.1
            let middle = size * 0.5
            
            Path{ path in
                path.move(to: CGPoint(x: middle, y: 0))
                
                path.addArc(
                    center: CGPoint(x: middle, y: size / 4 + indent),
                    radius: middle - size / 4,
                    startAngle: .degrees(270),
                    endAngle: .degrees(360),
                    clockwise: false
                )
                path.addArc(
                    center: CGPoint(
                        x: middle * 1.2,
                        y: size / 2 + indent),
                    radius: middle - size / 4,
                    startAngle: .degrees(270),
                    endAngle: .degrees(360),
                    clockwise: false
                )
                path.addArc(
                    center: CGPoint(
                        x: middle * 1.3,
                        y: size * 3 / 4 + indent),
                    radius: middle - size / 4,
                    startAngle: .degrees(270),
                    endAngle: .degrees(360),
                    clockwise: false
                )
                path.addLine(to: CGPoint(x: middle * 1.1, y: size * 3 / 4 + indent))
                path.addLine(to: CGPoint(x: middle * 1.1, y: size))
                path.addLine(to: CGPoint(x: middle * 0.9, y: size))
                path.addLine(to: CGPoint(x: middle * 0.9, y: size * 3 / 4 + indent))

                path.addArc(
                    center: CGPoint(
                        x: middle * 0.7 ,
                        y: size * 3 / 4 + indent),
                    radius: middle - size / 4,
                    startAngle: .degrees(180),
                    endAngle: .degrees(270),
                    clockwise: false
                )
                path.addArc(
                    center: CGPoint(
                        x: middle * 0.8 ,
                        y: size / 2 + indent),
                    radius: middle - size / 4,
                    startAngle: .degrees(180),
                    endAngle: .degrees(270),
                    clockwise: false
                )
                path.addArc(
                    center: CGPoint(
                        x: middle ,
                        y: size / 4 + indent),
                    radius: middle - size / 4,
                    startAngle: .degrees(180),
                    endAngle: .degrees(270),
                    clockwise: false
                )
            }
            .fill(Gradient(colors: [.green, .mint, .green, .brown]))
            

        }
    }
}

struct Tree_Previews: PreviewProvider {
    static var previews: some View {
        Tree()
            .frame(width: 300, height: 300)
    }
}

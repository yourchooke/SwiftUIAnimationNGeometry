//
//  Sparkles.swift
//  SwiftUIAnimationNGeometry
//
//  Created by Olga Yurchuk on 25.11.2022.
//

import SwiftUI

struct Sparkles: View {
    var isShowed: Bool
    
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(height,width)
            let indent = size * 0.1
            let middle = size * 0.5
            let quorter = size / 4
            
            // center
                Image(systemName: "bubbles.and.sparkles")
                    .resizable()
                    .foregroundColor(.yellow)
                    .frame(width: size * 0.15, height: size * 0.15)
                    .offset(x: quorter + indent + 10, y: quorter + indent * 0.5)
                    .shadow(color: .white, radius: 5)
                    .opacity(isShowed ? 1 : 0)
                    .animation(.spring(response: 0.5, dampingFraction: 0, blendDuration: 0).repeatForever(autoreverses: false), value: isShowed)
            
            // Right one sparkle
            Image(systemName: "bubbles.and.sparkles")
                    .resizable()
                    .foregroundColor(.yellow)
                    .frame(width: size * 0.15, height: size * 0.15)
                    .offset(x: middle + indent, y: middle + indent * 1.4)
                    .shadow(color: .white, radius: 5)
                    .opacity(isShowed ? 1 : 0)
                    .animation(.spring(response: 0.5, dampingFraction: 0, blendDuration: 0).repeatForever(autoreverses: false), value: isShowed)
            
            // Left one sparkle
            Image(systemName: "bubbles.and.sparkles")
                .resizable()
                .foregroundColor(.yellow)
                .frame(width: size * 0.15, height: size * 0.15)
                .offset(x: quorter, y: middle + indent * 1.2)
                .shadow(color: .white, radius: 5)
                .opacity(isShowed ? 1 : 0)
                .animation(.spring(response: 0.5, dampingFraction: 0, blendDuration: 0).repeatForever(autoreverses: false), value: isShowed)
        }
    }
}

struct Sparkles_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Tree()
            Sparkles(isShowed: true)
        }
    }
}

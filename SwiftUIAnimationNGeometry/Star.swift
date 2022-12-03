//
//  Star.swift
//  SwiftUIAnimationNGeometry
//
//  Created by Olga Yurchuk on 25.11.2022.
//

import SwiftUI

struct Star: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(height,width)
            let middle = size * 0.5
            let starSize = size * 0.25
            
            Image(systemName: "star.fill")
                .resizable()
                .frame(width: starSize, height: starSize)
                .foregroundColor(.yellow)
                .shadow(color: .white, radius: 10)
                .offset(x: middle - starSize / 2, y: -starSize / 4)
        }
    }
}

struct Star_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Tree()
            Star()
        }
        .padding()
    }
}

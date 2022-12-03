//
//  Ball.swift
//  SwiftUIAnimationNGeometry
//
//  Created by Olga Yurchuk on 25.11.2022.
//

import SwiftUI

struct Toy: View {
    let imageName: String
    let color: Color
    let size: Double
    let x: Double
    let y: Double
    
    
    var body: some View {

        Image(systemName: imageName)
            .resizable()
            .foregroundColor(color)
            .frame(width: size * 0.1, height: size * 0.1)
            .offset(x: x, y: y)
            .shadow(color: .yellow, radius: 5)
    }
}

struct Ball_Previews: PreviewProvider {
    static var previews: some View {
        Toy(imageName: "circle.fill", color: .blue, size: 1000, x: 100, y: 100)
    }
}

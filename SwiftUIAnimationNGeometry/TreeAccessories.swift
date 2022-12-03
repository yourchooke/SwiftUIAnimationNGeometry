//
//  TreeAccessories.swift
//  SwiftUIAnimationNGeometry
//
//  Created by Olga Yurchuk on 25.11.2022.
//

import SwiftUI

struct TreeAccessories: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(height,width)
            let indent = size * 0.1
            let middle = size * 0.5
            let quorter = size / 4
            
        // left side

            Image(systemName: "circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .frame(width: size * 0.1, height: size * 0.1)
               .offset(x: quorter, y: quorter + indent)
               .shadow(color: .yellow, radius: 5)
            
            
            Image(systemName: "circle.fill")
                .resizable()
                .foregroundColor(.yellow)
                .frame(width: size * 0.1, height: size * 0.1)
                .offset(x: quorter - indent, y:middle + indent)
                .shadow(color: .yellow, radius: 5)
            
            Image(systemName: "circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .frame(width: size * 0.1, height: size * 0.1)
                .offset(x: quorter - indent, y: middle + quorter + indent)
                .shadow(color: .yellow, radius: 5)
            
         // right side
            Image(systemName: "circle.fill")
                .resizable()
                .foregroundColor(.indigo)
                .frame(width: size * 0.1, height: size * 0.1)
                .offset(x: middle + quorter - indent, y: quorter + indent)
                .shadow(color: .yellow, radius: 5)

            Image(systemName: "circle.fill")
                .resizable()
                .foregroundColor(.blue)
                .frame(width: size * 0.1, height: size * 0.1)
                .offset(x: middle + quorter, y: middle + indent)
                .shadow(color: .yellow, radius: 5)
            
            Image(systemName: "circle.fill")
                .resizable()
                .foregroundColor(.orange)
                .frame(width: size * 0.1, height: size * 0.1)
                .offset(x: middle + quorter, y: middle + quorter + indent)
                .shadow(color: .yellow, radius: 5)

        }
    }
}

struct TreeAccessories_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Tree()
            TreeAccessories()
        }
    }
}

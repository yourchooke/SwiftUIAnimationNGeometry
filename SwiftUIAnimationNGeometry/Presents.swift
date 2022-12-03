//
//  Presents.swift
//  SwiftUIAnimationNGeometry
//
//  Created by Olga Yurchuk on 03.12.2022.
//

import SwiftUI

struct Presents: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(height,width)
            let indent = size * 0.1
            let middle = size * 0.5
            
            ZStack{
                Image(systemName: "gift.fill")
                    .foregroundColor(.red)
                    .scaleEffect(5)
                    .offset(x: middle - indent * 1.8, y: size - indent)
                
                Image(systemName: "gift")
                    .foregroundColor(.yellow)
                    .scaleEffect(5)
                    .offset(x: middle - indent * 1.8, y: size - indent)
            }
        }
    }
}

struct Presents_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Tree()
            Presents()
        }
        
    }
}

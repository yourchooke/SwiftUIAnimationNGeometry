//
//  ContentView.swift
//  SwiftUIAnimationNGeometry
//
//  Created by Olga Yurchuk on 25.11.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isSuited = false
    
    var body: some View {
        
        VStack{
            Spacer()
            Text("2023 наступает...")
                .font(.largeTitle)
                .opacity(isSuited ? 0 : 1)
            ZStack {
                Tree()
                TreeAccessories()
                    .opacity(isSuited ? 1 : 0)
                if isSuited {
                    Star()
                        .transition(.transition)
                }
                Presents()
                    .offset(x: isSuited ? 0 : 1000)
                    .animation(.easeIn, value: isSuited)
                Sparkles(isShowed: isSuited)
            }
            Text("С Новым годом!")
                .font(.largeTitle)
                .bold(true)
                .foregroundColor(.yellow)
                .opacity(isSuited ? 1 : 0)
            
            Button(action: {buttonAction()}) {
                Text(isSuited ? "Вернуть" : "Нарядить")
                    .font(.largeTitle)
                    .fontWeight(.thin)
                    .foregroundColor(isSuited ? .white : .black)
            }
            .buttonStyle(.bordered)
            .padding()
        }
        .background(isSuited ? Color.indigo : Color.white)
    }
    
    func buttonAction() {
        withAnimation {
            isSuited.toggle()
        }
    }
}

extension AnyTransition {
    static var transition: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
            .combined(with: .scale)
        let removal = AnyTransition.scale
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

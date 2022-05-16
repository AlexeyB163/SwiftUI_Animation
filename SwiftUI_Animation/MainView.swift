//
//  ContentView.swift
//  SwiftUI_Animation
//
//  Created by User on 15.05.2022.
//

import SwiftUI

struct MainView: View {

    @State private var angle: Double = 0
    
    var body: some View {
        VStack {
            Button {
                angle += 90
            } label: {
              
                BoatView()
                    .frame(width: 200, height: 200)
                    .rotationEffect(.degrees(angle))
                    .animation(.interpolatingSpring(mass: 2, stiffness: 1, damping: 1, initialVelocity: 4), value: angle)
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}


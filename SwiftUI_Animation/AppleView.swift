//
//  AppleView.swift
//  SwiftUI_Animation
//
//  Created by User on 15.05.2022.
//

import SwiftUI

struct AppleView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            let size = min(width, height)
            
            let nearLine = size * 0.1
            let farLine = size * 0.9
            let middle = size / 2
            let concavity = size * 0.7
            let step = size * 0.2
            
            Path { path in
                path.move(to: CGPoint(x: 40, y: 180))
                path.addLine(to: CGPoint(x: 160, y: 180))
                path.addLine(to: CGPoint(x: 195, y: middle + 17))
                path.addLine(to: CGPoint(x: size - 45, y: middle + 17))
                path.addLine(to: CGPoint(x: middle, y: 70))
                path.addLine(to: CGPoint(x: 45, y: middle + 17))
                path.addLine(to: CGPoint(x: 5, y: middle + 17))
                path.addLine(to: CGPoint(x: 40, y: 180))
                
                path.move(to: CGPoint(x: 40, y: 180))
                path.addLine(to: CGPoint(x: 195, y: middle + 17))
                path.move(to: CGPoint(x: 160, y: 180))
                path.addLine(to: CGPoint(x: 5, y: middle + 17))
                
                path.move(to: CGPoint(x: 45, y: middle + 17))
                path.addLine(to: CGPoint(x: 155, y: middle + 17))
                
            }
            .stroke(Color.blue)
        }
    }
}

struct AppleView_Previews: PreviewProvider {
    static var previews: some View {
        AppleView()
            .frame(width: 200, height: 200)
    }
}

//
//  colorCircle.swift
//  trafficLightSwiftUI
//
//  Created by Maria Mamina on 25.03.2021.
//

import SwiftUI

struct colorCircle: View {
    let color: Color
    let opacity: Double
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            
    }
}

struct colorCircle_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            colorCircle(color: .red, opacity: 0.3)
       
        }
    }
}

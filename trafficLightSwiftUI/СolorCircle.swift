//
//  colorCircle.swift
//  trafficLightSwiftUI
//
//  Created by Maria Mamina on 25.03.2021.
//

import SwiftUI

struct СolorCircle: View {
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

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
            СolorCircle(color: .red, opacity: 1)
        }
}

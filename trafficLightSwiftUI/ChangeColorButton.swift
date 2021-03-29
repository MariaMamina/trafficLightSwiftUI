//
//  ChangeColorButton.swift
//  trafficLightSwiftUI
//
//  Created by Maria Mamina on 29.03.2021.
//

import SwiftUI

struct ChangeColorButton: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(width: 150, height: 30)
                .padding()
                .background(Color.blue)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.white, lineWidth: 3)
                )
        }
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(title: "START", action: {})
    }
}

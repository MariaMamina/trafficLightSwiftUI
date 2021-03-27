//
//  ContentView.swift
//  trafficLightSwiftUI
//
//  Created by Maria Mamina on 25.03.2021.
//

import SwiftUI

struct ContentView: View {
   
    @State var title = "Start"
    @State public var lightNumber = 0
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.4
    
        var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                switch lightNumber {
                case 0:
                    allCircle
                case 1:
                    redCircle
                case 2:
                    yellowCircle
                case 3:
                    greenCircle
                default:
                    Text("Что-то пошло не так")
                }
                Spacer()
                button
            }
            .padding()
        }
    }
    
   private func colorChange() {
        title = "Next"
        lightNumber += 1
        if lightNumber > 3 {
            lightNumber = 1
        }
    }
    private var button: some View {
        Button(action: { colorChange()}) {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .frame(width: 150, height: 30)
                .padding()
                .background(Color.blue)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 3))
        }
    }
    private var allCircle: some View {
        VStack {
        colorCircle(color: .red, opacity: lightIsOff)
        colorCircle(color: .yellow, opacity: lightIsOff)
        colorCircle(color: .green, opacity: lightIsOff)
        }
    }
    private var redCircle: some View {
        VStack {
        colorCircle(color: .red, opacity: lightIsOn)
        colorCircle(color: .yellow, opacity: lightIsOff)
        colorCircle(color: .green, opacity: lightIsOff)
        }
    }
    private var yellowCircle: some View {
        VStack {
        colorCircle(color: .red, opacity: lightIsOff)
        colorCircle(color: .yellow, opacity: lightIsOn)
        colorCircle(color: .green, opacity: lightIsOff)
        }
    }
    private var greenCircle: some View {
        VStack {
        colorCircle(color: .red, opacity: lightIsOff)
        colorCircle(color: .yellow, opacity: lightIsOff)
        colorCircle(color: .green, opacity: lightIsOn)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

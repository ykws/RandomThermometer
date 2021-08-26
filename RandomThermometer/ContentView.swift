//
//  ContentView.swift
//  RandomThermometer
//
//  Created by KAWASHIMA Yoshiyuki on 2021/08/26.
//

import SwiftUI

struct ContentView: View {
    @State private var temperature: Float = 36.4
    
    var body: some View {
        VStack {
            Text(String(format: "%.1f", temperature))
                .font(.system(size: 100, weight: .bold, design: .default))
                .padding()
            Button("Next", action: {
                temperature = Float.random(in: 36.4..<36.9)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

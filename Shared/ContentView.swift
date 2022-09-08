//
//  ContentView.swift
//  Shared
//
//  Created by Wallace Silva on 19/07/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isScientific = true
    @State private var calculator = RPNCalculator()
    
    var body: some View {
        VStack {
            Toggle("Scientific", isOn: $isScientific)
            Spacer()
            Display(calculator: $calculator)
                .scaledToFit()
            HStack {
                if isScientific {
                    ScientificKeyboard(calculator: $calculator)
                }
                Keyboard(calculator: $calculator)
                    .scaledToFill()
            }
        }
        .background(.thinMaterial)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

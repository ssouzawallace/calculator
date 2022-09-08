//
//  ContentView.swift
//  Shared
//
//  Created by Wallace Silva on 19/07/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isProgrammer = true
    @State private var isScientific = false
    @State private var calculator = RPNCalculator()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0) {
                Spacer()
                Toggle("Scientific", isOn: $isScientific)
                Toggle("Programmer", isOn: $isProgrammer)
                Spacer()
                Display(calculator: $calculator)
                HStack {
                    if isProgrammer && UIDevice.current.orientation.isLandscape {
                        ProgrammerKeyboard(calculator: $calculator)
                    }
                    if isScientific && UIDevice.current.orientation.isLandscape {
                        ScientificKeyboard(calculator: $calculator)
                    }
                    if !isProgrammer {
                        Keyboard(calculator: $calculator)
                    }
                }
            }
            .background(.thinMaterial)
        }
        .navigationViewStyle(.stack)
        .navigationTitle("Senolop")
        .toolbar {
            EditButton()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

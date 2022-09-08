//
//  ContentView.swift
//  Shared
//
//  Created by Wallace Silva on 19/07/22.
//

import SwiftUI

struct ContentView: View {
    @State private var mode: RPNCalculator.Mode = .basic
    @State private var calculator = RPNCalculator()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0) {
                Picker("Mode", selection: $mode) {
                    Text(RPNCalculator.Mode.basic.rawValue).tag(RPNCalculator.Mode.basic)
                    Text(RPNCalculator.Mode.scientific.rawValue).tag(RPNCalculator.Mode.scientific)
                    Text(RPNCalculator.Mode.programmer.rawValue).tag(RPNCalculator.Mode.programmer)
                }
                Display(mode: $mode, calculator: $calculator)
                HStack {
                    if mode == .programmer { //&& UIDevice.current.orientation.isLandscape {
                        ProgrammerKeyboard(calculator: $calculator)
                    }
                    if mode == .scientific { //&& UIDevice.current.orientation.isLandscape {
                        ScientificKeyboard(calculator: $calculator)
                    }
                    if mode != .programmer {
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

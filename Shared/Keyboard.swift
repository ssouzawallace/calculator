//
//  Keyboard.swift
//  Calculator
//
//  Created by Wallace Silva on 02/09/22.
//

import SwiftUI

struct Keyboard: View {
    let calculator = Calculator()
    var body: some View {
        VStack {
            HStack {
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("7")
                }
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("8")
                }
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("9")
                }
            }
            
            HStack {
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("4")
                }
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("5")
                }
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("6")
                }
            }
            
            HStack {
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("1")
                }
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("2")
                }
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("3")
                }
            }
            
            HStack {
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("0")
                }

            }
        }
        .buttonStyle(.bordered)
    }
}

struct Keyboard_Previews: PreviewProvider {
    static var previews: some View {
        Keyboard()
    }
}

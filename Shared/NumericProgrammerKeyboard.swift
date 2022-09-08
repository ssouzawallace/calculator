//
//  NumericProgrammerKeyboard.swift
//  Calculator
//
//  Created by Wallace Silva on 07/09/22.
//

import SwiftUI

struct NumericProgrammerKeyboard: View {
    @Binding var calculator: RPNCalculator
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("D")
                }
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("E")
                }
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("F")
                }
            }
            HStack {
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("A")
                }
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("B")
                }
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("C")
                }
            }
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
                    Text("FF")
                }
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("0")
                }
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("00")
                }
            }
        }
        .fixedSize(horizontal: true, vertical: true)
        .buttonBorderShape(.capsule)
        .buttonStyle(.bordered)
    }
}

struct NumericProgrammerKeyboard_Previews: PreviewProvider {
    static var previews: some View {
        NumericProgrammerKeyboard(calculator: Binding.constant(RPNCalculator()))
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

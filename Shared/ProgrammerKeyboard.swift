//
//  ProgrammerKeyboard.swift
//  Calculator
//
//  Created by Wallace Silva on 07/09/22.
//

import SwiftUI

struct ProgrammerKeyboard: View {
    @Binding var calculator: RPNCalculator
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Button {
                        calculator.buttonPressed()
                    } label: {
                        Text("AND")
                    }
                    Button {
                        calculator.buttonPressed()
                    } label: {
                        Text("NOR")
                    }
                    Button {
                        calculator.buttonPressed()
                    } label: {
                        Text("<<")
                    }
                    Button {
                        calculator.buttonPressed()
                    } label: {
                        Text("X<<Y")
                    }
                }
                VStack {
                    Button {
                        calculator.buttonPressed()
                    } label: {
                        Text("OR")
                    }
                    Button {
                        calculator.buttonPressed()
                    } label: {
                        Text("XOR")
                    }
                    Button {
                        calculator.buttonPressed()
                    } label: {
                        Text(">>")
                    }
                    Button {
                        calculator.buttonPressed()
                    } label: {
                        Text("X>>Y")
                    }
                }
            }
            Button {
                calculator.buttonPressed()
            } label: {
                Text("inverter byte")
            }
            Button {
                calculator.buttonPressed()
            } label: {
                Text("inverter palavra")
            }
        }
        .fixedSize(horizontal: true, vertical: true)
        .buttonBorderShape(.capsule)
        .buttonStyle(.bordered)
    }
}

struct ProgrammerKeyboard_Previews: PreviewProvider {
    static var previews: some View {
        ProgrammerKeyboard(calculator: Binding.constant(RPNCalculator()))
    }
}

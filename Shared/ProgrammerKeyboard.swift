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
        HStack {
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
            NumericProgrammerKeyboard(calculator: $calculator)
            VStack {
                HStack {
                    VStack {
                        Button {
                            calculator.buttonPressed()
                        } label: {
                            Text("AC")
                        }
                        Button {
                            calculator.buttonPressed()
                        } label: {
                            Text("RoL")
                        }
                        Button {
                            calculator.buttonPressed()
                        } label: {
                            Text("2´s")
                        }
                        Button {
                            calculator.buttonPressed()
                        } label: {
                            Text("÷")
                        }
                        Button {
                            calculator.buttonPressed()
                        } label: {
                            Text("×")
                        }
                    }
                    VStack {
                        Button {
                            calculator.buttonPressed()
                        } label: {
                            Text("C")
                        }
                        Button {
                            calculator.buttonPressed()
                        } label: {
                            Text("RoR")
                        }
                        Button {
                            calculator.buttonPressed()
                        } label: {
                            Text("1´s")
                        }
                        Button {
                            calculator.buttonPressed()
                        } label: {
                            Text("−")
                        }
                        Button {
                            calculator.buttonPressed()
                        } label: {
                            Text("+")
                        }
                    }
                }
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("⏎")
                }
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
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

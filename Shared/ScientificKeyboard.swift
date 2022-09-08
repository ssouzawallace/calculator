//
//  ScientificKeyboard.swift
//  Calculator
//
//  Created by Wallace Silva on 07/09/22.
//

import SwiftUI

struct ScientificKeyboard: View {
    @Binding var calculator: RPNCalculator
    
    var body: some View {
        HStack {
            VStack {
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("(")
                }
                .disabled(true)

                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("2nd")
                }
                
                Button {
                    calculator.inversePressed()
                } label: {
                    Text("1/x")
                }
                
                Button {
                    calculator.xFactorialPressed()
                } label: {
                    Text("x!")
                }
                
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("Rad")
                }
            }
            
            VStack {
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text(")")
                }
                .disabled(true)

                Button {
                    calculator.x2Pressed()
                } label: {
                    Text("x^2")
                }
                
                Button {
                    calculator.sqrtPressed()
                } label: {
                    Text("sqrt(x)")
                }
                
                Button {
                    calculator.sinPressed()
                } label: {
                    Text("sin")
                }
                
                Button {
                    calculator.sinhPressed()
                } label: {
                    Text("sinh")
                }
            }
            
            VStack {
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("mc")
                }

                Button {
                    calculator.x3Pressed()
                } label: {
                    Text("x^3")
                }
                
                Button {
                    calculator.sqrt3Pressed()
                } label: {
                    Text("sqrt(x, 3)")
                }
                
                Button {
                    calculator.cosPressed()
                } label: {
                    Text("cos")
                }
                
                Button {
                    calculator.coshPressed()
                } label: {
                    Text("cosh")
                }
            }
            
            VStack {
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("m+")
                }

                Button {
                    calculator.yxPressed()
                } label: {
                    Text("y^x")
                }
                
                Button {
                    calculator.sqrtyxPressed()
                } label: {
                    Text("sqrt(y, x)")
                }
                .disabled(true)
                Button {
                    calculator.tanPressed()
                } label: {
                    Text("tan")
                }
                
                Button {
                    calculator.tanhPressed()
                } label: {
                    Text("tanh")
                }
            }
            
            VStack {
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("m-")
                }

                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("e^x")
                }
                
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("ln")
                }
                
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("e")
                }
                
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("π")
                }
            }
            
            VStack {
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("mr")
                }

                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("10^x")
                }
                
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("log10")
                }
                
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("EE")
                }
                
                Button {
                    calculator.buttonPressed()
                } label: {
                    Text("Rand")
                }
            }
        }
        .fixedSize(horizontal: true, vertical: true)
        .buttonBorderShape(.roundedRectangle)
        .buttonStyle(.bordered)
    }
}

struct ScientificKeyboard_Previews: PreviewProvider {
    static var previews: some View {
        ScientificKeyboard(calculator: Binding.constant(RPNCalculator()))
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

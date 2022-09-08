//
//  Display.swift
//  Calculator
//
//  Created by Wallace Silva on 02/09/22.
//

import SwiftUI

struct Display: View {
    @State private var multiSelection = Set<UUID>()
    @Binding var calculator: RPNCalculator
    
    var body: some View {
        ScrollView {
            ForEach(calculator.stack) { element in
                VStack(alignment: .trailing) {
                    Text("\(Double(element.value))")
                    Divider()
                }
            }
        }
    }
}

struct Display_Previews: PreviewProvider {
    static var previews: some View {
        Display(calculator: Binding.constant(RPNCalculator()))
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

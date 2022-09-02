//
//  Display.swift
//  Calculator
//
//  Created by Wallace Silva on 02/09/22.
//

import SwiftUI

struct Display: View {
    var body: some View {
        ScrollView {
            ForEach(0..<11) { element in
                VStack {
                    HStack {
                        Spacer()
                        Text("\(Double(element))")
                    }
                    Divider()
                }
            }
            .padding()
        }
    }
}

struct Display_Previews: PreviewProvider {
    static var previews: some View {
        Display()
    }
}

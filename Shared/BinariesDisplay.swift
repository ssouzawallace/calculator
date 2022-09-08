//
//  BinariesDisplay.swift
//  Calculator
//
//  Created by Wallace Silva on 08/09/22.
//

import SwiftUI

struct BinariesDisplay: View {
    var body: some View {
        VStack {
            Text(String(repeating: "0000 ", count: 8))
            Text(String(repeating: "0000 ", count: 8))
        }
    }
}

struct BinariesDisplay_Previews: PreviewProvider {
    static var previews: some View {
        BinariesDisplay()
    }
}

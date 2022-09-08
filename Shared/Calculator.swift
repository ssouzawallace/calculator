//
//  Calculator.swift
//  Calculator
//
//  Created by Wallace Silva on 02/09/22.
//

import Foundation

protocol Calculator {
    func buttonPressed()
}

extension Calculator {
    func buttonPressed() { /* do nothing */ }
}

struct RPNCalculator: Calculator {
    struct Item: Identifiable {
        var value: Double
        let id = UUID()
    }
    
    enum Mode: String, CaseIterable {
        case basic = "Basic"
        case scientific = "Scientific"
        case programmer = "Programmer"
    }
    
    enum BaseMode: Int {
        case eight = 8
        case ten = 10
        case sixteen = 16
    }
    var stack: [Item] = [Item(value: 0)]
    
    mutating func digitPressed(_ digit: Int) {
        guard digit >= 0 && digit <= 9 else {
            raise(0)
            return
        }
        let value: Double = stack.popLast()?.value ?? 0
        stack.append(Item(value: value*10 + Double(digit)))
    }
    
    mutating func commaPressed() {
        
    }
    
    mutating func returnPressed() {
        guard let newElement = stack.last else { return }
        stack.append(newElement)
    }
    
    mutating func deletePressed() {
        stack.removeLast()
    }
    
    mutating func rowUpPressed() {
        
    }
    
    mutating func rowDownPressed() {
        
    }

    mutating func moduloPressed() {
        
    }
    
    mutating func plusPressed() {
        guard let elementA = stack.popLast() else { return }
        guard let elementB = stack.popLast() else { return }
        stack.append(Item(value: elementA.value + elementB.value))
    }
    
    mutating func minusPressed() {
        
    }
    
    mutating func divisionPressed() {
        
    }
    
    mutating func multiplicationPressed() {
        guard let elementA = stack.popLast() else { return }
        guard let elementB = stack.popLast() else { return }
        stack.append(Item(value: elementA.value * elementB.value))
    }
    
    mutating func swapPressed() {
        stack.swapAt(0, 1)
    }
}

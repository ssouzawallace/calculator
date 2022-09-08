//
//  Calculator.swift
//  Calculator
//
//  Created by Wallace Silva on 02/09/22.
//

import Foundation
import AVFoundation

extension Int {
    func fact() -> Int {
        if self == 0 { return 1 }
        return self*(self-1).fact()
    }
}

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
        stack.append(Item(value: value*10 + (addsComma ? Double("0"+String(digit))! : Double(digit))))
    }
    
    mutating func commaPressed() {
        if containsComma {
            let player = AVPlayer()
            
            player.play()
        } else {
            addsComma = true
        }
    }

    private var addsComma = false
        
    private var containsComma: Bool {
        stack[0].value - Double(Int(stack[0].value)) != 0.0
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
        guard let elementA = stack.popLast() else { return }
        guard let elementB = stack.popLast() else { return }
    
        stack.append(Item(value: Double(Int(elementA.value) % Int(elementB.value))))
    }
    
    mutating func plusPressed() {
        guard let elementA = stack.popLast() else { return }
        guard let elementB = stack.popLast() else { return }
        stack.append(Item(value: elementA.value + elementB.value))
    }
    
    mutating func minusPressed() {
        guard let elementA = stack.popLast() else { return }
        guard let elementB = stack.popLast() else { return }
        stack.append(Item(value: elementA.value - elementB.value))
    }
    
    mutating func divisionPressed() {
        guard let elementA = stack.popLast() else { return }
        guard let elementB = stack.popLast() else { return }
        stack.append(Item(value: elementA.value / elementB.value))
    }
    
    mutating func multiplicationPressed() {
        guard let elementA = stack.popLast() else { return }
        guard let elementB = stack.popLast() else { return }
        stack.append(Item(value: elementA.value * elementB.value))
    }
    
    mutating func swapPressed() {
        stack.swapAt(0, 1)
    }
    
    mutating func yxPressed() {
        guard let elementA = stack.popLast() else { return }
        guard let elementB = stack.popLast() else { return }
        stack.append(Item(value: pow(elementA.value, elementB.value)))
    }
    
    mutating func sqrtPressed() {
        guard let element = stack.popLast() else { return }
        stack.append(Item(value: sqrt(element.value)))
    }
    
    mutating func inversePressed() {
        guard let element = stack.popLast() else { return }
        stack.append(Item(value: 1/(element.value)))
    }
    
    mutating func xFactorialPressed() {
        guard let element = stack.popLast() else { return }
        stack.append(Item(value: Double(Int(element.value).fact())))
    }
    
    mutating func x2Pressed() {
        guard let element = stack.popLast() else { return }
        stack.append(Item(value: pow(element.value, 2)))
    }
    
    mutating func x3Pressed() {
        guard let element = stack.popLast() else { return }
        stack.append(Item(value: pow(element.value, 3)))
    }
    
    mutating func sqrt3Pressed() {
        guard let element = stack.popLast() else { return }
        stack.append(Item(value: pow(element.value, 1/3)))
    }
    
    mutating func sqrtyxPressed() {
        guard let elementA = stack.popLast() else { return }
        guard let elementB = stack.popLast() else { return }
        stack.append(Item(value: pow(elementA.value, 1/elementB.value)))
    }

    mutating func sinPressed() {
        guard let element = stack.popLast() else { return }
        stack.append(Item(value: sin(element.value)))
    }
    
    mutating func sinhPressed() {
        guard let element = stack.popLast() else { return }
        stack.append(Item(value: sinh(element.value)))
    }
    
    mutating func cosPressed() {
        guard let element = stack.popLast() else { return }
        stack.append(Item(value: cos(element.value)))
    }
    
    mutating func coshPressed() {
        guard let element = stack.popLast() else { return }
        stack.append(Item(value: cosh(element.value)))
    }
    
    mutating func tanPressed() {
        guard let element = stack.popLast() else { return }
        stack.append(Item(value: tan(element.value)))
    }
    
    mutating func tanhPressed() {
        guard let element = stack.popLast() else { return }
        stack.append(Item(value: tanh(element.value)))
    }
}

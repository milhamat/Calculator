//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 02/12/20.
//

import Foundation

struct CalculatorLogic {
 
    private var calNum: Double?
    
    private var intermediateCalculation: (number: Double, calMethod: String)?
    
    mutating func setNumber(_ num: Double){
        self.calNum = num
    }
    
    mutating func getValue(symbol: String) -> Double? {
        if let n = calNum{
            switch symbol {
            case "+/-":
                return n * -1
            case "AC":
                return 0.0
            case "%":
                return n * 0.01
            case "=":
                return performTwoNumCalculation(nTwo: n)
            default:
                intermediateCalculation = (number: n, calMethod: symbol)
            }
        }
        return nil
    }
    
    private func performTwoNumCalculation(nTwo: Double) -> Double? {
        if let nOne = intermediateCalculation?.number,
           let operation = intermediateCalculation?.calMethod {
            
            switch operation {
            case "+":
                return nOne + nTwo
            case "-":
                return nOne - nTwo
            case "x":
                return nOne * nTwo
            case "÷":
                return nOne / nTwo
            default:
                fatalError("the operation passed in does not match any of the cases.")
            }
        }
        return nil
    }
}

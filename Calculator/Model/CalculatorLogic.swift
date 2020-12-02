//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 02/12/20.
//

import Foundation

class CalculatorLogic {
 
    var calNum: Double
    
    init(calNum: Double) {
        self.calNum = calNum
    }
    
    func getValue(senderVal: String) -> Double? {
        if senderVal == "+/-" {
            return calNum * -1
        }else if senderVal == "AC" {
            return 0.0
        }else if senderVal == "%" {
            return calNum * 0.01
        }
        return nil
    }
}

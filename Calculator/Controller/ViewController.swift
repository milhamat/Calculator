//
//  ViewController.swift
//  Calculator
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 02/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishTypingNumber: Bool = true
    
    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("Cannot convert display label text to a double")
            }
            return number
        } set {
            displayLabel.text = String(newValue)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private var calculator = CalculatorLogic()
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        isFinishTypingNumber = true
        
        if let calcMethod = sender.currentTitle {
            
            calculator.setNumber(displayValue)
            
            if let result = calculator.getValue(symbol: calcMethod){
                displayLabel.text = String(result)
            }
        }
    }
    
    @IBAction func numbButtonPressed(_ sender: UIButton) {
        
        if let newValue = sender.currentTitle {
            if isFinishTypingNumber {
                displayLabel.text = newValue
                isFinishTypingNumber = false
            }else {
                if newValue == "." {
                    
                    let isInt = floor(displayValue) == displayValue
                    
                    if !isInt {
                        return
                    }
                }
                displayLabel.text = displayLabel.text! + newValue
            }
        }
    }
    
}


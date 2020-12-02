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
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        isFinishTypingNumber = true
        
        if let calcMethod = sender.currentTitle {
            if calcMethod == "+/-" {
                displayLabel.text = String(displayValue * -1)
            }else if calcMethod == "AC" {
                displayLabel.text = String(0.0)
            }else if calcMethod == "%" {
                let percent = displayValue / 100
                displayLabel.text = String(percent)
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
                    guard let currentDisplayValue = Double(displayLabel.text!) else {
                        fatalError("Cannot convert display label text to double")
                    }
                    
                    let isInt = floor(currentDisplayValue) == currentDisplayValue
                    
                    if !isInt {
                        return
                    }
                }
                displayLabel.text = displayLabel.text! + newValue
            }
        }
    }
    
}


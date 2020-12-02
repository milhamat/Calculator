//
//  ViewController.swift
//  Calculator
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 02/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    var isFinishTypingNumber: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        isFinishTypingNumber = true
        print(isFinishTypingNumber)
    }
    
    @IBAction func numbButtonPressed(_ sender: UIButton) {
        
        if let newValue = sender.currentTitle {
            if isFinishTypingNumber {
                displayLabel.text = newValue
                isFinishTypingNumber = false
            }else {
                displayLabel.text = displayLabel.text! + newValue
            }
        }
        print(isFinishTypingNumber)
    }
    
}


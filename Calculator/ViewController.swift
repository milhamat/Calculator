//
//  ViewController.swift
//  Calculator
//
//  Created by Muhammad Ilham Ashiddiq Tresnawan on 02/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func numbButtonPressed(_ sender: UIButton) {
        let label = sender.titleLabel?.text
        print(label)
    }
    
}


//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Emir Hardal on 8.11.2019.
//  Copyright © 2019 Emir Hardal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    // Global Variables
    var result = Double()
    let formatter = NumberFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Summation
    @IBAction func sumTapped(_ sender: Any) {
        
        if let firstNumber = Double(firstText.text!){
            if let secondNumber = Double(secondText.text!){
                
                result = firstNumber + secondNumber
                formatter.maximumFractionDigits = 4
                formatter.minimumFractionDigits = 2
                
                let formattedResult = formatter.string(for: result)
                               
                resultLabel.text = formattedResult
                
                
            }
        }
    }
    
    // Substraction
    @IBAction func minusTapped(_ sender: Any) {
        
        if let firstNumber = Double(firstText.text!){
            if let secondNumber = Double(secondText.text!){
                
                result = firstNumber - secondNumber
                formatter.maximumFractionDigits = 4
                formatter.minimumFractionDigits = 2
                
                let formattedResult = formatter.string(for: result)
                               
                resultLabel.text = formattedResult
                
            }
        }
    }
    
    // Multiplication
    @IBAction func multiplyTapped(_ sender: Any) {
        
        if let firstNumber = Double(firstText.text!){
            if let secondNumber = Double(secondText.text!){
                
                result = firstNumber * secondNumber
                formatter.maximumFractionDigits = 4
                formatter.minimumFractionDigits = 2
                
                let formattedResult = formatter.string(for: result)
                
                resultLabel.text = formattedResult
                
            }
        }
    }
    
    // Division
    @IBAction func divideTapped(_ sender: Any) {
        
        if let firstNumber = Double(firstText.text!){
            if let secondNumber = Double(secondText.text!){
                
                result = firstNumber / secondNumber
                formatter.maximumFractionDigits = 4
                formatter.minimumFractionDigits = 2
                
                let formattedResult = formatter.string(for: result)
                
                resultLabel.text = formattedResult
                
            }
        }
    }

}

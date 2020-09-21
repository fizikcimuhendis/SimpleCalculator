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
    
    // MARK: Global Variables
    var result = Double()
    let formatter = NumberFormatter()
  
    
    // MARK: Summation
    @IBAction func sumTapped(_ sender: Any) {
        
        guard let firstNumber = Double(firstText.text!) else {return}
        guard let secondNumber = Double(secondText.text!) else {return}
                
        result = firstNumber + secondNumber
        formatter.maximumFractionDigits = 4
        formatter.minimumFractionDigits = 2
        let formattedResult = formatter.string(for: result)
        resultLabel.text = formattedResult
    }
    
    // MARK: Substraction
    @IBAction func minusTapped(_ sender: Any) {
        
        guard let firstNumber = Double(firstText.text!) else {return}
        guard let secondNumber = Double(secondText.text!) else {return}
                
        result = firstNumber - secondNumber
        formatter.maximumFractionDigits = 4
        formatter.minimumFractionDigits = 2
        let formattedResult = formatter.string(for: result)
        resultLabel.text = formattedResult
    }
    
    // MARK: Multiplication
    @IBAction func multiplyTapped(_ sender: Any) {
        
        guard let firstNumber = Double(firstText.text!) else {return}
        guard let secondNumber = Double(secondText.text!) else {return}
                
        result = firstNumber * secondNumber
        formatter.maximumFractionDigits = 4
        formatter.minimumFractionDigits = 2
        let formattedResult = formatter.string(for: result)
        resultLabel.text = formattedResult
    }
    
    // MARK: Division
    @IBAction func divideTapped(_ sender: Any) {
        
        guard let firstNumber = Double(firstText.text!) else {return}
        guard let secondNumber = Double(secondText.text!) else {return}
                
        result = firstNumber / secondNumber
        formatter.maximumFractionDigits = 4
        formatter.minimumFractionDigits = 2
        let formattedResult = formatter.string(for: result)
        resultLabel.text = formattedResult
    }

}

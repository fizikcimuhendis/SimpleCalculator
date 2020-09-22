//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Emir Hardal on 8.11.2019.
//  Copyright © 2019 Emir Hardal. All rights reserved.
//

import UIKit

class CalculationController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var firstText: UITextField!
    @IBOutlet weak var secondText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    // MARK: Global Properties
    
    private var result = Double()
    private var formatter: NumberFormatter {
        let newFormatter = NumberFormatter()
        newFormatter.maximumFractionDigits = 4
        newFormatter.minimumFractionDigits = 2
        return newFormatter
    }
  
    // MARK: Actions
    
    @IBAction func plusDidTap(_ sender: Any) {
        guard let firstNumber = Double(firstText.text ?? "0"), let secondNumber = Double(secondText.text ?? "0") else { return }
                
        result = firstNumber + secondNumber
        let formattedResult = formatter.string(for: result)
        resultLabel.text = "Result: \(formattedResult!)"
    }
    
    @IBAction func minusDidTap(_ sender: Any) {
        guard let firstNumber = Double(firstText.text ?? "0"), let secondNumber = Double(secondText.text ?? "0") else { return }
                
        result = firstNumber - secondNumber
        let formattedResult = formatter.string(for: result)
        resultLabel.text = "Result: \(formattedResult!)"
    }
    
    @IBAction func crossDidTap(_ sender: Any) {
        guard let firstNumber = Double(firstText.text ?? "0"), let secondNumber = Double(secondText.text ?? "0") else { return }
                
        result = firstNumber * secondNumber
        let formattedResult = formatter.string(for: result)
        resultLabel.text = "Result: \(formattedResult!)"
    }
    
    @IBAction func divisionDidTap(_ sender: Any) {
        guard let firstNumber = Double(firstText.text ?? "0"), let secondNumber = Double(secondText.text ?? "0") else { return }
                
        result = firstNumber / secondNumber
        let formattedResult = formatter.string(for: result)
        resultLabel.text = "Result: \(formattedResult!)"
    }

}

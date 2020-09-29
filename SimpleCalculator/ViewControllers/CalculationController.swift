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
    
    @IBAction func plusDidTap(_ sender: UIButton) {
        guard let firstNumber = Double(firstText.text ?? "0"), let secondNumber = Double(secondText.text ?? "0") else { return }
                
        result = firstNumber + secondNumber
        let formattedResult = formatter.string(for: result)
        resultLabel.text = "Result: \(formattedResult!)"
    }
    
    @IBAction func minusDidTap(_ sender: UIButton) {
        guard let firstNumber = Double(firstText.text ?? "0"), let secondNumber = Double(secondText.text ?? "0") else { return }
                
        result = firstNumber - secondNumber
        let formattedResult = formatter.string(for: result)
        resultLabel.text = "Result: \(formattedResult!)"
    }
    
    @IBAction func crossDidTap(_ sender: UIButton) {
        guard let firstNumber = Double(firstText.text ?? "0"), let secondNumber = Double(secondText.text ?? "0") else { return }
                
        result = firstNumber * secondNumber
        let formattedResult = formatter.string(for: result)
        resultLabel.text = "Result: \(formattedResult!)"
    }
    
    @IBAction func divisionDidTap(_ sender: UIButton) {
        guard let firstNumber = Double(firstText.text ?? "0"), let secondNumber = Double(secondText.text ?? "0") else { return }
                
        result = firstNumber / secondNumber
        let formattedResult = formatter.string(for: result)
        resultLabel.text = "Result: \(formattedResult!)"
    }
    
    @IBAction func percentDidTap(_ sender: UIButton) {
        guard let firstNumber = Double(firstText.text ?? "0"), let secondNumber = Double(secondText.text ?? "0") else { return }
        
        result = (firstNumber * secondNumber) / 100
        let formattedResult = formatter.string(for: result)
        resultLabel.text = "Result: \(formattedResult!)"
    }
    
    @IBAction func powerDidTap(_ sender: UIButton) {
        guard let firstNumber = Double(firstText.text ?? "0"), let secondNumber = Double(secondText.text ?? "0") else { return }
        
        result = pow(firstNumber, secondNumber)
        let formattedResult = formatter.string(for: result)
        resultLabel.text = "Result: \(formattedResult!)"
    }
    
    @IBAction func rootDidtap(_ sender: UIButton) {
        guard let firstNumber = Double(firstText.text ?? "0"), let secondNumber = Double(secondText.text ?? "0") else { return }
        
        result = pow(firstNumber, 1/secondNumber)
        let formattedResult = formatter.string(for: result)
        resultLabel.text = "Result: \(formattedResult!)"
    }
    
    @IBAction func logDidTap(_ sender: UIButton) {
        guard let firstNumber = Double(firstText.text ?? "0"), let secondNumber = Double(secondText.text ?? "0") else { return }
        
        result = log(secondNumber) / log(firstNumber)
        let formattedResult = formatter.string(for: result)
        resultLabel.text = "Result: \(formattedResult!)"
    }
    

}

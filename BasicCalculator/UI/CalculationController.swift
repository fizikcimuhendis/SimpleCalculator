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
    
    @IBOutlet weak var enterNumberField: UITextField!
    
    // MARK: Global Properties
    
    private var lastNumber : Double = 0.0
    private var operation = ""
    private var intermediateResult : Double = 0.0
    private var result : Double = 0.0
    private var formatter: NumberFormatter {
        let newFormatter = NumberFormatter()
        newFormatter.maximumFractionDigits = 4
        newFormatter.minimumFractionDigits = 2
        return newFormatter
    } // Closure Stored property'e dönüştürünce hata veriyor, neden?
    
  
    // MARK: Actions
    
    @IBAction func plusDidTap(_ sender: UIButton) {
        operation = "+"
        lastNumber = Double(enterNumberField.text!) ?? 0.0
        intermediateResult += Double(enterNumberField.text!) ?? 0.0
        enterNumberField.text = ""
        print(lastNumber)
        print(intermediateResult)
        
    }
    
    @IBAction func minusDidTap(_ sender: UIButton) {
        operation = "-"
        lastNumber = Double(enterNumberField.text!) ?? 0.0
        intermediateResult -= Double(enterNumberField.text!) ?? 0.0
        enterNumberField.text = ""
        print(lastNumber)
        print(intermediateResult)
    }
    
    @IBAction func crossDidTap(_ sender: UIButton) {
        operation = "*"
        lastNumber = Double(enterNumberField.text!) ?? 0.0
        intermediateResult *= Double(enterNumberField.text!) ?? 0.0
        enterNumberField.text = ""
        print(lastNumber)
        print(intermediateResult)
    }
    
    @IBAction func slashDidTap(_ sender: UIButton) {
        operation = "/"
        lastNumber = Double(enterNumberField.text!) ?? 0.0
        intermediateResult /= Double(enterNumberField.text!) ?? 0.0
        enterNumberField.text = ""
        print(lastNumber)
        print(intermediateResult)
    }
    
    @IBAction func clearDidTap(_ sender: UIButton) {
        enterNumberField.text = ""
        intermediateResult = 0.0
        result = 0.0
    }
    
    @IBAction func minpluDidTap(_ sender: UIButton) {
        let convertedNumber = -1.0 * (Double(enterNumberField.text!) ?? 0.0)
        enterNumberField.text = String(convertedNumber)
    }
    
    @IBAction func decimalDidTap(_ sender: UIButton) {
        enterNumberField.text! += "."
    }
    
    @IBAction func equalDidTap(_ sender: UIButton) {
//        if enterNumberField.text == nil{
//            result = intermediateResult
//            let formattedResult = formatter.string(for: result)
//            enterNumberField.text = "\(formattedResult!)"
//        } // BURASI OLMADAN DA ÇALIŞIYOR.
        
        lastNumber = Double(enterNumberField.text!) ?? 0.0
        
        switch operation {
        case "+":
            result = intermediateResult + lastNumber
            let formattedResult = formatter.string(for: result)
            enterNumberField.text = "\(formattedResult!)"
        case "-":
            result = intermediateResult - lastNumber
            let formattedResult = formatter.string(for: result)
            enterNumberField.text = "\(formattedResult!)"
        case "*":
            result = intermediateResult * lastNumber
            let formattedResult = formatter.string(for: result)
            enterNumberField.text = "\(formattedResult!)"
        case "/":
            result = intermediateResult / lastNumber
            let formattedResult = formatter.string(for: result)
            enterNumberField.text = "\(formattedResult!)"
        default:
            print("Error")
        }
        
    }
    
    
    
    
}

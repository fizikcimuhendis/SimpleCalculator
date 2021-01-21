//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Emir Hardal on 8.11.2019.
//  Copyright © 2019 Emir Hardal. All rights reserved.
//

import UIKit

//MARK: - Extension for Rounding
extension Double {
    func round(toDecimal places: Int) -> Double {
        let precisionNumber = pow(10, Double(places))
        var n = self
        n = n * precisionNumber
        n.round()
        n = n / precisionNumber
        return n
    }
}

//MARK: - Extension for UIButton Animation

extension UIButton {
    
    func startAnimatingPressActions() {
        addTarget(self, action: #selector(animateDown), for: [.touchDown, .touchDragEnter])
        addTarget(self, action: #selector(animateUp), for: [.touchDragExit, .touchCancel, .touchUpInside, .touchUpOutside])
    }
    
    @objc private func animateDown(sender: UIButton) {
        animate(sender, transform: CGAffineTransform.identity.scaledBy(x: 0.95, y: 0.95))
    }
    
    @objc private func animateUp(sender: UIButton) {
        animate(sender, transform: .identity)
    }
    
    private func animate(_ button: UIButton, transform: CGAffineTransform) {
        UIView.animate(withDuration: 0.4,
                       delay: 0,
                       usingSpringWithDamping: 0.5,
                       initialSpringVelocity: 3,
                       options: [.curveEaseInOut],
                       animations: {
                        button.transform = transform
            }, completion: nil)
    }
    
}

//MARK: - UIViewController

class CalculationController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet weak var enterNumberField: UITextField!
    
    // MARK: Global Properties
    
    private var lastNumber : Double = 0.0
    private var operation = ""
    private var intermediateResult : Double = 0.0
    private var result : Double = 0.0
    
//    private var formatter: NumberFormatter {
//        let newFormatter = NumberFormatter()
//        newFormatter.maximumFractionDigits = 4
//        newFormatter.minimumFractionDigits = 2
//        return newFormatter
//    } // Closure Stored property'e dönüştürünce hata veriyor, neden?
    
  
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
        
        lastNumber = Double(enterNumberField.text!) ?? 0.0
        
        switch operation {
        case "+":
            result = intermediateResult + lastNumber
        case "-":
            result = intermediateResult - lastNumber
        case "*":
            result = intermediateResult * lastNumber
        case "/":
            result = intermediateResult / lastNumber
        default:
            print("Error")
        }
        
        // let formattedResult = formatter.string(for: result)
        enterNumberField.text = "\(result.round(toDecimal: 3))"
        
        enterNumberField.endEditing(true)
        
    }
}


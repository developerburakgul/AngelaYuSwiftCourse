//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    private var isFinishedTypingNumber : Bool = true
    private var calculator = CalculatorLogic()
    private var displayValue : Double {
        get {
            guard let number = Double(displayLabel.text!) else {fatalError("Cannot convert display label text to double")}
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
    }
    
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
        isFinishedTypingNumber = true
        
        calculator.setNumber(displayValue) // burada displayValue yi parametre olarak gönderince zaten kendisi çağrıldığı için getter bloğu çalıştı
        
        if let calcMethod = sender.currentTitle {
            if let result = calculator.Calculate(symbol: calcMethod)  {
                displayValue = result // burada ise setter bloğu çalıştı ve display text değişti
            }
            
                    
        }
        
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        
        if let numValue = sender.currentTitle {
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            }else{
                if numValue == "." {
                    
                    let isInt = floor(displayValue ) == displayValue
                    if !isInt { // number is not int , so we can return in here because . is used
                        return
                    }
                    
                }
                displayLabel.text = displayLabel.text! + numValue
            }
        }
        
    }
}

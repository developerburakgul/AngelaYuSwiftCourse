//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Burak Gül on 15.06.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    
    
    
    
    
    var numberOfPeople : Int = 2
    var tipRate : Float = 0.10
    var totalAmount : Float?
    var personalAmount : Float {
        let multiplier = 1.0 + tipRate
        let total = totalAmount ?? 0.0
        return Float(total*multiplier)/Float(numberOfPeople)
        
    }
    
    
    
    
    mutating func CalculateTipRate(button : UIButton) {
        let selectedTipButtonTitle = button.currentTitle!
        //        print("selectedButtonTitle : \(selectedTipButtonTitle)")
        let selectedTipButtonMinusPercent = String(selectedTipButtonTitle.dropLast())
        //        print("selectedButtonMinusPercent: \(selectedTipButtonMinusPercent)")
        let selectedTipButtonMinusPercentValue = Float(selectedTipButtonMinusPercent)!
        //        print("selectedTipButtonMinusPercentValue : \(selectedTipButtonMinusPercentValue)")
        tipRate = Float(selectedTipButtonMinusPercentValue)/Float(100)
        //        print("tip rate : \(tipRate!)")
        
    }
    
    
    
    
    mutating func CalculateNumberOfPeople(stepper : UIStepper)  {
        let value = stepper.value
        numberOfPeople = Int(value)
        
    }
    
    
    mutating func setTotalAmount(_ totalAmount : Float)  {
        self.totalAmount = totalAmount
    }
    
    
    
    func GetNumberOfPeople() -> Int {
        return numberOfPeople
    }
    
    
    func getTipRate() -> Float {
        return tipRate
    }
    
    
}

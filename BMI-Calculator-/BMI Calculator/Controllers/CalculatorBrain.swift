//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Burak Gül on 11.06.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//
import UIKit
struct CalculatorBrain {
    
    var bmi : Float = 0.0
    
    
    mutating func calculateBMI(height : Float , weight : Float)  {
        
        var Height = round(height*100)/100.0
        var Weight = round(weight)
        print(Height)
        print(Weight)
        self.bmi = Weight / pow(Height, 2)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", self.bmi)
    }
}

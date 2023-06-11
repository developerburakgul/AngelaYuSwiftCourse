//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Burak Gül on 11.06.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi : Float?
    
    
    mutating func calculateBMI(height : Float , weight : Float)  {
        let Height = round(height*100)/100.0
        let Weight = round(weight*100)/100
        bmi = Weight/pow(Height, 2)
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi ?? 0.0)
    }
}

//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Burak Gül on 11.06.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi : BMI?
    
    
    mutating func calculateBMI(height : Float , weight : Float)  {
        let Height = round(height*100)/100.0
        let Weight = round(weight*100)/100
        let bmiValue = Weight/pow(Height, 2)
        
        
        switch bmiValue {
        case ..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color:UIColor {_ in return #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)} )
            
        case 18.5..<24.9 :
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: UIColor {_ in return #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)})
            
            
        default:
            bmi = BMI(value: bmiValue, advice: "Eat less pies !", color: UIColor {_ in return #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)})
        }
        
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() ->String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}

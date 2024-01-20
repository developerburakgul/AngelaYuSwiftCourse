//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Burak Gül on 20.01.2024.
//  Copyright © 2024 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    private var number : Double? 
    private var intermediateCalculation : (number1:Double,calculationMethod:Operation)?
    private var operation:Operation?
    
    //MARK: - Functions
    mutating func setNumber(_ number :Double)  {
        self.number = number
    }

    mutating func Calculate(symbol : Operation)->Double?{
        if let number = number {
            switch symbol {
            case .changeSign:
                return number * -1
            case .AC:
                return number * 0
            case .percentage:
                return number * 0.01
            case .equal:
                return performTwoNumCalculation(number2:number)
            default:
                intermediateCalculation = (number1:number,calculationMethod:symbol)
            }
        }
        return nil
    }
    
    private func performTwoNumCalculation( number2 : Double ) -> Double?{
        if let number1 = intermediateCalculation?.number1 ,let operation = intermediateCalculation?.calculationMethod {
            switch operation {
            case .plus:
                return number1 + number2
            case .minus:
                return number1 - number2
            case .divide:
                return number1/number2
            case .multiplication:
                return number1 * number2
            default:
                fatalError("The operation passed in does not match any of the cases")
            }
        }
        return nil
    }
}

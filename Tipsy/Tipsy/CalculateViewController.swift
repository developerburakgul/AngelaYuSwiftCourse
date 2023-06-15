//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var billTextField: UITextField!
//    var tipRate : Float!
//    var personelAmount : Float!
    
    
    var calculatorBrain = CalculatorBrain()
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    


    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        

        
        calculatorBrain.CalculateTipRate(button : sender)
        
        billTextField.endEditing(true)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        calculatorBrain.CalculateNumberOfPeople(stepper : sender)
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
       
       
      
        if !isEmptyBillTextField() {
            // kullanıcı birşeyler girdiyse
            let totalAmount = Float(billTextField.text!)!
            calculatorBrain.setTotalAmount(totalAmount)
            performSegue(withIdentifier: "goToResult", sender: self)
            
            

        } else {
            // kullanıcı hiçbirşey girmediyse
        }

        
        

        
       
        
        
    }
    
    func isEmptyBillTextField() -> Bool {
        return (billTextField.text == "") ? true : false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.personalAmount = calculatorBrain.personalAmount
            destinationVC.numberOfPeople = calculatorBrain.GetNumberOfPeople()
            destinationVC.tipRate = calculatorBrain.getTipRate()
        }
    }
}


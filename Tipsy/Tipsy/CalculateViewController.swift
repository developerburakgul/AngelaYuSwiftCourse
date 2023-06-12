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
    var tipRate : Float!
    var personelTotal : Float!
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipChanged(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        
        sender.isSelected = true
        
        let selectedTipButtonTitle = sender.currentTitle!
        let selectedTipButtonMinusPercent = String(selectedTipButtonTitle.dropLast())
        let selectedTipButtonMinusPercentValue = Float(selectedTipButtonMinusPercent)!
        tipRate = selectedTipButtonMinusPercentValue/100.00
        billTextField.endEditing(true)
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
       
        let totalText = billTextField.text!
        let total = Float(totalText)!
        let totalWithTip = total * (1+tipRate)
        let personNumber = Float(splitNumberLabel.text!)!
        let personaltotal = totalWithTip / personNumber
        personelTotal = personaltotal
        
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
       
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.totalAmount = personelTotal
            destinationVC.personNumber = Int(splitNumberLabel.text!)!
            destinationVC.tip = tipRate
        }
    }
}


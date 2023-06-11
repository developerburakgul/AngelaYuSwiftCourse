//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        var height = sender.value
        heightLabel.text = String(format: "%.2f", height) + String(" m")
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = weightSlider.value
        weightLabel.text = String(format: "%.0f", weight) + String(" Kg")
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        var height = heightSlider.value
        let weight = weightSlider.value
        
        calculatorBrain.calculateBMI(height : height ,weight : weight)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
        
        
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            
        }
    }
    
}


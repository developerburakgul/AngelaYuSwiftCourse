//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
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
        var heightTimes100IntValue = Int(height*100)
        height = Float(heightTimes100IntValue)/Float(100)
        
        
        heightLabel.text = String(format: "%.2f", height) + String(" m")
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = Int(weightSlider.value)
        var weightFloatValue = Float(weight)
        
        weightLabel.text = String(format: "%.0f", weightFloatValue) + String(" Kg")
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        var height = heightSlider.value
        var heightTimes100IntValue = Int(height*100)
        height = Float(heightTimes100IntValue)/Float(100) // height 2 ondalıklı olacak şekilde ayarladım
        
        
        
        let weight = Int(weightSlider.value)
        var bmi = Float(weight) / Float(pow(height, 2))
        var bmiTimes100IntValue = Int(bmi*100)
        bmi = Float(bmiTimes100IntValue)/Float(100)
        print(bmi)
        
        
        
    }
    
}


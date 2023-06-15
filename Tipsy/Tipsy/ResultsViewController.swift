//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Burak Gül on 12.06.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var personalAmount : Float!
    var numberOfPeople : Int!
    var tipRate : Float!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = String(format: "%.4f", personalAmount!)
        settingsLabel.text = "Split between \(numberOfPeople!) people , with \(Int(tipRate*100)) % tip"
        

        // Do any additional setup after loading the view.
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
        
    }
    

    

}

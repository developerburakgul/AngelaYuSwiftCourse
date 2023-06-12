//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Burak Gül on 12.06.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var totalAmount : Float!
    var personNumber : Int!
    var tip : Float!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = "\(totalAmount!)"
        settingsLabel.text = "Split between \(personNumber!) people , with \(Int(tip*100)) % tip"
        

        // Do any additional setup after loading the view.
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

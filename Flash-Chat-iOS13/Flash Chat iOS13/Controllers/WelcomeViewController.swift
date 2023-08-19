//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit


class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "⚡️FlashChat"
        
//        var charIndex = 0.0
//        let titleText = "⚡️FlashChat"
//
//        for letter in titleText {
//            Timer.scheduledTimer(withTimeInterval: charIndex * 0.1, repeats: false) { timer in
//                self.titleLabel.text?.append(letter)
//            }
//            charIndex = charIndex + 1
//        }

       
    }
    

}

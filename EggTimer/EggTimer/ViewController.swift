//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
//    let softTime = 5
//    let mediumTime = 7
//    let hardTime = 12
//
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    var totalTime = 0
    var secondsPassed = 0
    
    var timer = Timer()
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }



    @objc func updateCounter() {
        //example functionality
        if secondsPassed < totalTime {
             
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed)/Float(totalTime)
            
            
        }else {
            titleLabel.text = "DONE!!"
            playSound()
            
       
            timer.invalidate()
        }
    }
    
    
    let eggTimes = [
        "Soft":5,
        "Medium":7,
        "Hard":12
    ]
    

    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        secondsPassed = 0
        progressBar.progress = 0
        titleLabel.text =  hardness
        
        
        timer  = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }
    
    func playSound() {
        guard let path = Bundle.main.path(forResource: "alarm_sound", ofType:"mp3") else {
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
   
    
    
    
}

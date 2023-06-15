//
//  Tip.swift
//  Tipsy
//
//  Created by Burak Gül on 15.06.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

struct TIP {
    var rate : Float
    var totalAmount : Float
    var personalAmount : Float
    var numberOfPeople : Int
    
    init(rate: Float, totalAmount: Float, personalAmount: Float, numberOfPeople: Int) {
        self.rate = rate
        self.totalAmount = totalAmount
        self.personalAmount = personalAmount
        self.numberOfPeople = numberOfPeople
    }
    
}



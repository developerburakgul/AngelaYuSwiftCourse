//
//  WeatherData.swift
//  Clima
//
//  Created by Burak Gül on 10.08.2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData : Codable {
    var name : String
    var main : Main
    var weather : [Weather]
    
    
}

struct Main : Codable {
    var temp : Double
    
}

struct Weather : Codable {
    var id : Int
    
    var description : String
    
}
        
        

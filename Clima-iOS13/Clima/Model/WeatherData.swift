//
//  WeatherData.swift
//  Clima
//
//  Created by Burak Gül on 10.08.2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData : Decodable {
    var name : String
    var main : Main
    
    
}

struct Main : Decodable {
    var temp : Double
    
}
        
        

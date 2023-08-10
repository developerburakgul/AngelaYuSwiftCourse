//
//  WeatherManager.swift
//  Clima
//
//  Created by Burak Gül on 10.08.2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?&appid=44c8eaf1b49afe01887d1495f73ac87d&units=metric"
    func fetchWeather(cityName : String)  {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    func performRequest(urlString : String) {
        // 1. Create a url
        if let url = URL(string: urlString) {
            // 2. Create a urlSession
            let session = URLSession(configuration: .default)
            // 3. Give urlSession a task
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            // 4. Start the task
            task.resume()
        }
    }
    func handle(data:Data?,response:URLResponse?,error:Error?) {
        if error != nil {
            print(error!)
        }
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
    }
}

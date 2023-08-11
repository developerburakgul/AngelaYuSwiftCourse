//
//  WeatherManager.swift
//  Clima
//
//  Created by Burak Gül on 10.08.2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

protocol WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager : WeatherManager ,weather: WeatherModel)
    func didFailWithError(error : Error)
}

struct WeatherManager {
    var delegate : WeatherManagerDelegate?
   
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?&appid=44c8eaf1b49afe01887d1495f73ac87d&units=metric"
    func fetchWeather(cityName : String)  {
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(with: urlString)
    }
    func performRequest(with urlString : String) {
        // 1. Create a url
        if let url = URL(string: urlString) {
            // 2. Create a urlSession
            let session = URLSession(configuration: .default)
            // 3. Give urlSession a task
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                }
                if let safeData = data {
                    if let weather = self.parseJSON(safeData) {
                        self.delegate?.didUpdateWeather(self, weather : weather)
                    }
                }
            }
            // 4. Start the task
            task.resume()
        }
    }
    func parseJSON(_ weatherData : Data) -> WeatherModel?  {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let id   = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let name = decodedData.name
            let weather = WeatherModel(conditionID: id, cityName: name, temperature: temp)
            return weather
        } catch  {
            self.delegate?.didFailWithError(error: error)
            return nil
        }
    }
}



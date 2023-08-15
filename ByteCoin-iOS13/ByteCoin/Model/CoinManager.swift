//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol CoinManagerDelegate {
    func didUpdateUI(_ coinManager : CoinManager , _ coinModel : CoinModel)
    func didFailError(_ error : Error)
}
struct CoinManager  {
    var delegate : CoinManagerDelegate?
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "BAF055A9-EB7F-4164-BB6B-A78C520CDB26"
    let currencyArray = ["AUD","BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    func getCoinPrice(for currency : String) {
        var urlString = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        performRequest(with: urlString)
    }
    func performRequest(with urlString : String) {
        // step 1 create a url
        if let url = URL(string: urlString) {
            // step 2 create a urlSession
            let session = URLSession(configuration: .default)
            // step 3 give a task to urlSession
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil {
                    self.delegate?.didFailError(error!)
                    return
                }
                if let safeData = data {
                    if let coin =  parseJSON(safeData) {
                        self.delegate?.didUpdateUI(self, coin)
                    }
                }
            }
            // step 4 start the task
            task.resume()
        }
    }
    func parseJSON(_ coinData : Data) -> CoinModel? {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(CoinData.self, from: coinData)
            let quote = decodedData.asset_id_quote
            let rate = decodedData.rate
            let coin = CoinModel(quote: quote, rate: rate)
            return coin
        }catch {
            self.delegate?.didFailError(error)
            return nil
        }
    }

}

//
//  NetworkManager.swift
//  WAR
//
//  Created by ihlas on 17.01.2022.
//

import Foundation

class NetworkManager{
    private init(){}
        
        
        static let shared: NetworkManager = NetworkManager()
    func getWeather(city: String, result: @escaping ((OfferModel?) -> (()))){
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "api.openweathermap.org"
        urlComponents.path = "data/2.5/forecast"
        urlComponents.queryItems = [URLQueryItem(name: "q", value: city),
                                    URLQueryItem(name: "appid", value: "e3702d4768471b630d784638e6e8b477")]
                                    
var request = URLRequest(url: urlComponents.url!)
        request.httpMethod = "GET"
        let task = URLSession(configuration: .default)
        task.dataTask(with: request) { (data, response, error) in
            if data != nil{
            
            }else{
                print(error)
            }
            
            
        }.resume()
    
        
    }
}

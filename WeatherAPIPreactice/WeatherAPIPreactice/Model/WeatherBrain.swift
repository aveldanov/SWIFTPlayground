//
//  weatherBrain.swift
//  WeatherAPIPreactice
//
//  Created by Veldanov, Anton on 4/28/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol WeatherBrainDelegate {
  func didUpdateWeather(weather: [String:String])
}



struct WeatherBrain {
  let urlBase = "https://api.openweathermap.org/data/2.5/weather?appid=7636ee5a3761e06a869b130e641380e9"
  
  var delegate: WeatherBrainDelegate?
  
  func fetchWeather(location: String){
    let urlString = urlBase + "&q=" + location
    print("fetching weather")
    
    performRequest(with: urlString)
  }
  
  func performRequest(with urlString:String){
    print("perform request")
    
    if let url = URL(string: urlString){
      let session = URLSession(configuration: .default)
      print(session)
      let task = session.dataTask(with: url) { (data, response, error) in
        print(url)
        if error != nil{
          print(error!)
        }else{
          if let safeData = data{
            print(safeData)
            let weather = self.parseJSON(safeData)
            print(weather)
            
            self.delegate?.didUpdateWeather(weather: weather)
          }
        }
      }
      task.resume()
    }
  }
  
  
  func parseJSON(_ weatherData:Data) -> [String:String]{
    var weatherResult = String()
    
    var weatherDict: [String:String] = [:]
    
    do{
      let json = try JSON(data: weatherData)
      let name = json["name"].stringValue
      let temp = String(format: "%.2f", (Double(json["main"]["temp"].stringValue)! - 273))
      
      let desc = json["weather"][0]["description"].stringValue
      //      print(json["name"])
      //      print(Double(json["main"]["temp"].stringValue)! - 273)
      
      weatherDict = ["name": name, "temp": temp,"desc": desc]
      
    }catch{
      
      print("JSON parsing issue")
      
    }
    
    return weatherDict
    
    
  }
  
  
}

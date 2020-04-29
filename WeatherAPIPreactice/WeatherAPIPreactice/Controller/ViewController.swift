//
//  ViewController.swift
//  WeatherAPIPreactice
//
//  Created by Veldanov, Anton on 4/28/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController, UITextFieldDelegate {
  

  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var weatherLabel: UILabel!
  
  @IBOutlet weak var tempLabel: UILabel!
  
  
  var weatherBrain = WeatherBrain()
  
//  var location = "london"
  
//  var urlString = urlBase + "&" + location
  
  
//  let url = URL(string: urlString)
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    weatherBrain.delegate = self
    
      }


  @IBAction func submitButtonClicked(_ sender: UIButton) {
    
    weatherBrain.fetchWeather(location: textField.text!)
    
  }
  
  
  
  

}


extension ViewController: WeatherBrainDelegate{
  func didUpdateWeather(weather: [String : String]) {
    
    
    DispatchQueue.main.async {
      self.tempLabel.text = weather["temp"]
      self.weatherLabel.text = weather["desc"]
             }
      }
  
  
  
  
  
}





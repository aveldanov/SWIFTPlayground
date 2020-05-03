//
//  ViewController.swift
//  APIsPractice
//
//  Created by Veldanov, Anton on 5/2/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {
  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var resultLabel: UILabel!
  
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  @IBAction func submitButtonPressed(_ sender: UIButton) {
    // removing spaces
    if let url = URL(string: "https://samples.openweathermap.org/data/2.5/weather?q=" + textField.text!.replacingOccurrences(of: " ", with: "%20") + ",uk&appid=7636ee5a3761e06a869b130e641380e9"){
      
      let session = URLSession.shared
      
      let task = session.dataTask(with: url) { (data, response, error) in
        
        if error != nil{
          
          print(error)
        }else{
          if let safeData = data{
            do{
              
              let json = try JSON(data: safeData)
              
              let description = json["weather"][0]["description"].stringValue
              
              DispatchQueue.main.async {
                self.resultLabel.text = description
              }
              
              
              
            }catch{
              
              print("JSON parsing Error")
              
            }
            
            
          }
          
        }
        
      }
      task.resume()
      
      
      
    }
    
  }
  
}


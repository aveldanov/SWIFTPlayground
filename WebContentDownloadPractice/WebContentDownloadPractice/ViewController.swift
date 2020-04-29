//
//  ViewController.swift
//  WebContentDownloadPractice
//
//  Created by Veldanov, Anton on 4/28/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
  
  @IBOutlet weak var webView: WKWebView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    //    if let url = URL(string: "https://www.stackoverflow.com"){
    //      let myRequest = URLRequest(url: url)
    ////      webView.load(myRequest)
    //
    //
    //      webView.loadHTMLString("<h1>Hello Anton</h1>", baseURL: nil)
    
    if let url = URL(string: "https://www.stackoverflow.com"){
      let myRequest = NSMutableURLRequest(url: url)
      let task = URLSession.shared.dataTask(with: myRequest as URLRequest) { (data, response, error) in
        if error != nil{
          print(error)
        }else{
          if let unwrappedData = data{
            
            let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
            print(dataString)
            
            DispatchQueue.main.async {
              // Update user interface
              print("End of project")
            }
            
          }
          
          
          
        }
      }
      
      // call a task
      task.resume()
    }
    
    
    print("HELLO ANTON")
  }
  
  
}


//
//  ViewController.swift
//  AutoLayoutPractice
//
//  Created by Veldanov, Anton on 4/24/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
  @IBOutlet weak var label: UILabel!
  
  @IBOutlet weak var textField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  
  

  
  @IBAction func buttonClicked(_ sender: UIButton) {
    
    textField.text = "YO"
    
  }
  

}


extension ViewController{
  
  
  func isPrime(num: Int) -> Bool{
     if num == 1 {return false}
     var i = 2

     while i < num{

       if num % i == 0{
         return false
       }
       i += 1
     }
     return true

   }
  
  
  
  
}


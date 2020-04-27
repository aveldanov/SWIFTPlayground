//
//  ViewController.swift
//  AutoLayoutPractice
//
//  Created by Veldanov, Anton on 4/24/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
  @IBOutlet weak var resultLabel: UILabel!
  
  @IBOutlet weak var numberTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  
  

  
  @IBAction func buttonClicked(_ sender: UIButton) {
    
    if let userEnteredString = numberTextField.text{
      let userEnteredInteger = Int(userEnteredString)
      if let number = userEnteredInteger{
        if isPrime(num: number){
          
          resultLabel.text = "\(number) is prime!"
        }else{
          
          resultLabel.text = "\(number) is NOT prime"
        }
        
        
        
      }else{
        
        resultLabel.text = "Please enter a valid number!"
        
      }
      
    }
    
    
    
 
    
    
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


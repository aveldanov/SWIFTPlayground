//
//  ViewController.swift
//  DataStoragePractice
//
//  Created by Veldanov, Anton on 4/27/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  let defaults = UserDefaults.standard
  
  @IBOutlet weak var label: UILabel!
  @IBOutlet weak var textField: UITextField!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()

    
    
    
    
  }
  
  @IBAction func saveButtonPressed(_ sender: UIButton) {
    
    defaults.set(textField.text, forKey: "phone")
    
    
  }
  
  
  @IBAction func showButtonPressed(_ sender: UIButton) {
    
    let phoneObject = defaults.object(forKey: "phone")
    
    if let retrivedPhone = phoneObject{
      
      label.text = retrivedPhone as? String

    }
    
    
    
  }
  
  
  


}


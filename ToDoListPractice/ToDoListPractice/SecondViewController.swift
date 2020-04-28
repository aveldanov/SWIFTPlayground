//
//  SecondViewController.swift
//  ToDoListPractice
//
//  Created by Veldanov, Anton on 4/27/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

  let defaults = UserDefaults.standard
  
  @IBOutlet weak var textField: UITextField!
  
  @IBOutlet weak var addButtonLabel: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    textField.delegate = self
    
  }
  
  
  
  @IBAction func addButtonPressed(_ sender: UIButton) {
    
    
    let itemsObject = defaults.object(forKey: "items")
    var items = [String]()
    
    if let tempItems = itemsObject as? [String]{
      
      items = tempItems
      items.append(textField.text!)
      print(items)
    }else{
      
      let items = [textField.text]
      
    }
    
    defaults.set(items, forKey: "items")
    
    textField.text = ""
    
    
//    let vc2 = storyboard?.instantiateViewController(withIdentifier: "first")
//
//      present(vc2!, animated: true, completion: nil)
    
    
    
    
    
  }
  
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    view.endEditing(true)
  }
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }
  
  
  
  

}


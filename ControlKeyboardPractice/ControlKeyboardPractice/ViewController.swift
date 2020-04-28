//
//  ViewController.swift
//  ControlKeyboardPractice
//
//  Created by Veldanov, Anton on 4/27/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

protocol SelectionDelegate {
  func didFinishEditing()
}

class ViewController: UIViewController, UITextFieldDelegate {

  
  @IBOutlet weak var textFileldLabel: UITextField!
  
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // linking textField to VC so VC can manage the textField
    textFileldLabel.delegate = self
      }

  // touch outside of keyboard
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    self.view.endEditing(true)
  }
  
  
  // Return button pressed
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    
    return true
  }

}


//
//  ViewController.swift
//  MultipleVCPractice
//
//  Created by Veldanov, Anton on 4/27/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var value = 10
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  

  
  
  @IBAction func VC1ButtonPressed(_ sender: UIButton) {
    
    let vc2 = storyboard?.instantiateViewController(withIdentifier: "second")

    present(vc2!, animated: true, completion: nil)
  }
  


}


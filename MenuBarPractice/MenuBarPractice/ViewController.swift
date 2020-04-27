//
//  ViewController.swift
//  MenuBarPractice
//
//  Created by Veldanov, Anton on 4/27/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  private var timer = Timer()
  var count = 210
  
  @IBOutlet weak var timerLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    UpdateUI(with: count)

  }
  
  @IBAction func pauseButtonPressed(_ sender: UIBarButtonItem) {
    timer.invalidate()
  }
  
  @IBAction func playButtonPressed(_ sender: UIBarButtonItem) {
    
    timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(eggTimer), userInfo: nil, repeats: true)
    
  }
  
  
  @IBAction func minusTenButtonPressed(_ sender: UIBarButtonItem) {
    
    count -= 10
    UpdateUI(with: count)
  }
  
  
  @IBAction func plusTenButtonPressed(_ sender: UIBarButtonItem) {
    
    count += 10
    UpdateUI(with: count)
  }
  
  
  @IBAction func resetButtonPressed(_ sender: UIBarButtonItem) {
    
    count = 210
    UpdateUI(with: count)
  }
  
  
  // Methods
  

  
  

  
}



extension ViewController{
  
  func UpdateUI(with count: Int){
    
    timerLabel.text = String(count)
  }
  
  
  @objc func eggTimer(){
    
    if count > 0{
      
      count -= 1
      timerLabel.text = String(count)
      
    }else{
      timer.invalidate()
    }
  }
  
  
  
}


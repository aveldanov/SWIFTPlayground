//
//  ViewController.swift
//  AnimationPractice
//
//  Created by Veldanov, Anton on 4/28/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var count = 1
  var timer = Timer()
  var isAnimating = false
  
  @IBOutlet weak var buttonOutlet: UIButton!
  @IBOutlet weak var imageOutlet: UIImageView!
  
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    buttonOutlet.setTitle("START", for: .normal)
  }

  @IBAction func nextButtonPressed(_ sender: UIButton) {
    

    if isAnimating{
      
      buttonOutlet.setTitle("START", for: .normal)
      timer.invalidate()
      isAnimating = false
      
    }else{
      
      buttonOutlet.setTitle("STOP", for: .normal)
      
      timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(animate), userInfo: nil, repeats: true)
isAnimating = true
      
      
    }
 
    

  }
  
}


extension ViewController{
  @objc func animate(){
    
  imageOutlet.image = UIImage(named: "frame_0\(count)_delay-0.01s.gif")
    
    count += 1
    
    if count == 9{
      count = 0
    }
    
  }
  
  
}


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
  
  
  @IBAction func fadeInPressed(_ sender: UIButton) {
    
    imageOutlet.alpha = 0
    UIView.animate(withDuration: 1) {
      self.imageOutlet.alpha = 1
    }
  }
  
  
  @IBAction func slideInPressed(_ sender: UIButton) {
    
    imageOutlet.center = CGPoint(x: imageOutlet.center.x
      - 500, y: imageOutlet.center.y)
    
    UIView.animate(withDuration: 2) {
      self.imageOutlet.center = CGPoint(x: self.imageOutlet.center.x + 500, y: self.imageOutlet.center.y)
    }
    
  }
  
  
  @IBAction func growButtonPressed(_ sender: UIButton) {
    
    let width = imageOutlet.frame.width
    let height = imageOutlet.frame.height
    
    imageOutlet.frame = CGRect(x: imageOutlet.frame.origin.x, y: imageOutlet.frame.origin.y, width: 0, height: 0)
    
    UIView.animate(withDuration: 1) {
      self.imageOutlet.frame = CGRect(x: self.imageOutlet.frame.origin.x
        , y: self.imageOutlet.frame.origin.y, width: width, height: height)
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


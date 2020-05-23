//
//  ViewController.swift
//  ParallaxCellPractice
//
//  Created by Veldanov, Anton on 5/23/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var newImageView: UIImageView!
  override func viewDidLoad() {
        super.viewDidLoad()
setupEffect()
        // Do any additional setup after loading the view.
    newImageView.clipsToBounds = false
    }
    

 
  
  
  
  func setupEffect(){
    
    let min = CGFloat(-60)
    let max = CGFloat(60)
          
    let xMotion = UIInterpolatingMotionEffect(keyPath: "center.x", type: .tiltAlongHorizontalAxis)
    xMotion.minimumRelativeValue = min
    xMotion.maximumRelativeValue = max
          
    let yMotion = UIInterpolatingMotionEffect(keyPath: "center.y", type: .tiltAlongVerticalAxis)
    yMotion.minimumRelativeValue = min
    yMotion.maximumRelativeValue = max
          
    let motionEffectGroup = UIMotionEffectGroup()
    motionEffectGroup.motionEffects = [xMotion,yMotion]

    newImageView.addMotionEffect(motionEffectGroup)
  }
  
  
  

}

//
//  ViewController.swift
//  SwipeAndShakePractice
//
//  Created by Veldanov, Anton on 5/1/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()


    let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swiped(gesture: )))
    swipeRight.direction = UISwipeGestureRecognizer.Direction.right
    view.addGestureRecognizer(swipeRight)
    
    
    let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swiped(gesture:)))
    
    swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
    
    view.addGestureRecognizer(swipeLeft)
    
  }
  
  override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
    if event?.subtype == UIEvent.EventSubtype.motionShake{
      
      print("Device was shaken")
      
      
    }
  }
  
  
  
  
  @objc func swiped(gesture: UIGestureRecognizer){
    
    if let swipeGesture = gesture as? UISwipeGestureRecognizer{
      
      switch swipeGesture.direction {
      case UISwipeGestureRecognizer.Direction.right:
        print("Swiped right")
      case UISwipeGestureRecognizer.Direction.left:
        print("Swiped left")

      default:
        break
      }
      
    }
    
    
  }


}


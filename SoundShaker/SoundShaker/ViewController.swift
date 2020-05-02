//
//  ViewController.swift
//  SoundShaker
//
//  Created by Veldanov, Anton on 5/1/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

  var player = AVAudioPlayer()
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
    if event?.subtype == UIEvent.EventSubtype.motionShake{
      
      let soundArray = ["cat","cow","dog","horse","lion","pig","sheep"]
      let randomNumber = Int.random(in: 1...soundArray.count)
      print(randomNumber)
      
      let fileLocation = Bundle.main.path(forResource: soundArray[randomNumber-1], ofType: "mp3")
      
      do {
        try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: fileLocation!))
        
        
        player.play()
      }catch{
        
        
        
      }
      
      
      
    }
  }


}


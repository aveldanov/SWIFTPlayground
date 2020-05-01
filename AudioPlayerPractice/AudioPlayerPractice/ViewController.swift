//
//  ViewController.swift
//  AudioPlayerPractice
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
    
    let audioPath = Bundle.main.path(forResource: "mozart", ofType: "mp3")
    
    do{
      try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
    }catch{
      
      
    }
    
    
  }


}


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
  
  @IBOutlet weak var sliderOutlet: UISlider!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let audioPath = Bundle.main.path(forResource: "mozart", ofType: "mp3")
    
    do{
      try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath!))
    }catch{
      
      
    }
    
    
  }

  
  
  @IBAction func playButtonPressed(_ sender: UIButton) {
    
    player.play()
  }
  @IBAction func pauseButtonPressed(_ sender: UIButton) {
    player.pause()
  }
  
  @IBAction func sliderTapped(_ sender: UISlider) {
    player.volume = sliderOutlet.value
    
  }
  
  

}


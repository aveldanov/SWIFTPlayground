//
//  ViewController.swift
//  FindingUserLocationPractice
//
//  Created by Veldanov, Anton on 4/29/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
  
  var locationManager: CLLocationManager?
  
  
  

  override func viewDidLoad() {
    super.viewDidLoad()


    locationManager?.delegate = self
    locationManager?.desiredAccuracy = kCLLocationAccuracyBest

  }


}


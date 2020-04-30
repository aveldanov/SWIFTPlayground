//
//  ViewController.swift
//  LocationAppPractice
//
//  Created by Veldanov, Anton on 4/29/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
  let locationManager = CLLocationManager()

  @IBOutlet weak var mapOutlet: MKMapView!
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    locationManager.delegate = self
    locationManager.desiredAccuracy = kCLLocationAccuracyBest
    locationManager.requestWhenInUseAuthorization()

    locationManager.startUpdatingLocation()
    
  }
   
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
  //    print(locations)
      
      let userLocation: CLLocation = locations[0]

      
      // GLGeocoder going from address to location. But we need the other way round
      
      CLGeocoder().reverseGeocodeLocation(userLocation) { (placemarks, error) in
        if error != nil{
          print(error)
        }else{
          if let placemark = placemarks?[0]{
//            print(placemark)
            var subThoroughfare = ""
            if placemark.subThoroughfare != nil{
              subThoroughfare = placemark.subThoroughfare
            }
          }
          
        }
      }
      
      
    }

}


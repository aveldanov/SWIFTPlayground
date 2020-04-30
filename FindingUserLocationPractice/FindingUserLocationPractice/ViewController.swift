//
//  ViewController.swift
//  FindingUserLocationPractice
//
//  Created by Veldanov, Anton on 4/29/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
  
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
    let latitude = userLocation.coordinate.latitude
    let longitude = userLocation.coordinate.longitude
    
    //MARK: - Setup a map

    let latDelta: CLLocationDegrees = 0.05
    let lonDelta: CLLocationDegrees = 0.05
    let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
    
    let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
  
    
    mapOutlet.setRegion(region, animated: true)
    
    
    //MARK: - Annotation
    let annotation = MKPointAnnotation()
    annotation.title = "Its me"
    annotation.subtitle = "I'm here..."
    annotation.coordinate = location
    
    mapOutlet.addAnnotation(annotation)
    
    
  }

}


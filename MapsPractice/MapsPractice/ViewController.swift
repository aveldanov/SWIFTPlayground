//
//  ViewController.swift
//  MapsPractice
//
//  Created by Veldanov, Anton on 4/29/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
  @IBOutlet weak var mapOutlet: MKMapView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let latitude: CLLocationDegrees = 37.3688
    let longitude: CLLocationDegrees = -122.0363
    let latDelta: CLLocationDegrees = 0.05 //technically a zoom...distance between lat lines
    let lonDelta: CLLocationDegrees = 0.05
    
    let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
    
    let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
    
    mapOutlet.setRegion(region, animated: true)
    
    //MARK: - Annotation
    let annotation = MKPointAnnotation()
    annotation.title = "Sunnyvale!!!"
    annotation.subtitle = "My home..."
    annotation.coordinate = location
    
    mapOutlet.addAnnotation(annotation)
    
    
    //MARK: - long press gesture reconizer - add another point on map
    let uilpgr = UILongPressGestureRecognizer(target: self, action: #selector(self.longpress(gestureRecognizer:)))
    mapOutlet.addGestureRecognizer(uilpgr)
    
    
  }
  
  @objc func longpress(gestureRecognizer: UIGestureRecognizer){
    let touchPoint = gestureRecognizer.location(in: self.mapOutlet)
    let coordinate = mapOutlet.convert(touchPoint, toCoordinateFrom: self.mapOutlet)
    let annotation = MKPointAnnotation()
    annotation.coordinate = coordinate
    annotation.title = "NEW TITLE"
    annotation.subtitle = "NEW SUBTITLE"
    mapOutlet.addAnnotation(annotation)
    
    
  }


}


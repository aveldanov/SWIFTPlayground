//
//  ViewController.swift
//  LocationAppPractice
//
//  Created by Veldanov, Anton on 4/29/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
  let locationManager = CLLocationManager()

  
  @IBOutlet weak var latitudeLabel: UILabel!
  @IBOutlet weak var longitudeLabel: UILabel!
  @IBOutlet weak var courseLabel: UILabel!
  @IBOutlet weak var speedLabel: UILabel!
  @IBOutlet weak var altitiudeLabel: UILabel!
  @IBOutlet weak var addressLabel: UILabel!
  
  
  
  
  
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

      latitudeLabel.text = String(userLocation.coordinate.latitude)
      longitudeLabel.text = String(userLocation.coordinate.longitude)
      courseLabel.text = String(userLocation.course)
      speedLabel.text = String(userLocation.speed)
      altitiudeLabel.text = String(userLocation.altitude)
      
      
      // GLGeocoder going from address to location. But we need the other way round
      
      CLGeocoder().reverseGeocodeLocation(userLocation) { (placemarks, error) in
        if error != nil{
          print(error!)
        }else{
          if let placemark = placemarks?[0]{
//            print(placemark)
            var address = ""
            //Additional street-level information for the placemark.
            var subThoroughfare = ""
            if placemark.subThoroughfare != nil{
              subThoroughfare = placemark.subThoroughfare!
              
              // append to the address line
              address += subThoroughfare + " "
            }
            
            //The street address associated with the placemark.
            var thoroughfare = ""
            if placemark.thoroughfare != nil{
              thoroughfare = placemark.thoroughfare!
              address += thoroughfare + "\n"
            }
            
            //Additional city-level information for the placemark.
            var subLocality = ""
            if placemark.subLocality != nil{
              subLocality = placemark.subLocality!
              address += subLocality + "\n"
            }
            
            //Additional administrative area information for the placemark.
            var subAdministrativeArea = ""
            if placemark.subAdministrativeArea != nil{
              subAdministrativeArea = placemark.subAdministrativeArea!
              address += subAdministrativeArea + "\n"

            }
            
            
            //The postal code associated with the placemark.
            var postalCode = ""
            if placemark.postalCode != nil{
              postalCode = placemark.postalCode!
              address += postalCode + "\n"

            }
            
//            The name of the country associated with the placemark.
            var country = ""
            if placemark.country != nil{
              country = placemark.country!
              address += country + "\n"

            }
            
            
//            The state or province associated with the placemark.
            var administrativeArea = ""
            if placemark.administrativeArea != nil{
              administrativeArea = placemark.administrativeArea!
              address += administrativeArea + "\n"

            }
            
            print(subThoroughfare + " " + thoroughfare + "\n" + subLocality + "\n" + subAdministrativeArea + "\n" + postalCode + "\n" + administrativeArea + "\n" + country)
            
            self.addressLabel.text = address
          }
          
        }
      }
      
      
    }

}


//
//  ViewController.swift
//  SpinnersAndAlertsPractice
//
//  Created by Veldanov, Anton on 5/4/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func showAlertButtonPressed(_ sender: UIButton) {
    // add alert box
    let alertController = UIAlertController(title: "Hey there", message: "Are you sure?", preferredStyle: .alert)
    // add alert button
    alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
      print("Ok button pressed")
      // close alert
      self.dismiss(animated: true, completion: nil)
    }))
    
    alertController.addAction(UIAlertAction(title: "No", style: .default, handler: { (action) in
            self.dismiss(animated: true, completion: nil)

    }))
    // present alert
    present(alertController, animated: true, completion: nil)
  }
  
  
  @IBAction func pauseAppButtonPressed(_ sender: UIButton) {
    
    let activityIndicator = UIActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: 60, height: 60))
    
    //center it
    activityIndicator.center = self.view.center
    // stop it
    activityIndicator.hidesWhenStopped = true
    activityIndicator.style = UIActivityIndicatorView.Style.medium
    
    view.addSubview(activityIndicator)
    
    activityIndicator.startAnimating()
    //stop user from interacting while loading 
    view.isUserInteractionEnabled = false
    
  }
  
  
  
  
  
}


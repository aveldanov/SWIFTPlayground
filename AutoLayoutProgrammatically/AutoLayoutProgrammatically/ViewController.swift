//
//  ViewController.swift
//  AutoLayoutProgrammatically
//
//  Created by Veldanov, Anton on 4/24/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    let redView = UIView()
    redView.backgroundColor = .red
    
    view.addSubview(redView)
    
    // enables autolayout
//    redView.translatesAutoresizingMaskIntoConstraints = false
//
//
//    redView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
//    redView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
//    redView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//    redView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    
    redView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor)
  }
}



extension UIView{
  func anchor(top: NSLayoutYAxisAnchor, leading: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, trailing: NSLayoutXAxisAnchor){
    translatesAutoresizingMaskIntoConstraints = false
    
    topAnchor.constraint(equalTo: top).isActive = true
    leadingAnchor.constraint(equalTo: leading).isActive = true
    trailingAnchor.constraint(equalTo: trailing).isActive = true
    bottomAnchor.constraint(equalTo: bottom).isActive = true
  }
  
  
  
}


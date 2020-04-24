//
//  ViewController.swift
//  AutoLayoutProgrammatically2
//
//  Created by Veldanov, Anton on 4/24/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
  // {} - closure
  let imagePiece: UIImageView = {
    let imageView = UIImageView(image: #imageLiteral(resourceName: "image"))

    return imageView
    
  }()
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()

    view.addSubview(imagePiece)
//    imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    
    // enables autolayout
    imagePiece.translatesAutoresizingMaskIntoConstraints = false
    
    imagePiece.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//    imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    imagePiece.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
    
    imagePiece.widthAnchor.constraint(equalToConstant: 100).isActive = true
    imagePiece.heightAnchor.constraint(equalToConstant: 100).isActive = true

  }


}


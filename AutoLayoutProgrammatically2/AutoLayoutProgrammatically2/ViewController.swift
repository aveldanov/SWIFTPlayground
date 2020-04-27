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
    
    // enables autolayout
    imageView.translatesAutoresizingMaskIntoConstraints = false
    imageView.contentMode = .scaleAspectFit
    
    
    return imageView
    
  }()
  
  
  let descriptionTextView: UITextView = {
    let textView = UITextView()
    textView.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    
    textView.font = UIFont.boldSystemFont(ofSize: 18)
    textView.textAlignment = .center
    textView.isEditable = false
    textView.isSelectable = false
    textView.isScrollEnabled = false
    
    // enables autolayout
    textView.translatesAutoresizingMaskIntoConstraints = false
    return textView
    
  }()
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    
    view.addSubview(imagePiece)
    //    imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    view.addSubview(descriptionTextView)
    
    setupLayout()
    
    // enables autolayout
  
    
  }
  
  
  private func setupLayout(){
    
    
    
    imagePiece.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    //    imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    imagePiece.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
    
    imagePiece.widthAnchor.constraint(equalToConstant: 100).isActive = true
    imagePiece.heightAnchor.constraint(equalToConstant: 100).isActive = true
    
    
    
    
    descriptionTextView.topAnchor.constraint(equalTo: imagePiece.bottomAnchor, constant: 120).isActive = true
    descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    
    descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    
    descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    
    
    
    
  }
  
}


//
//  ViewController.swift
//  PhotoAccessPractice
//
//  Created by Veldanov, Anton on 5/4/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
  
  
  
  @IBOutlet weak var imageViewOutlet: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    

  }
  
  
  
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    if let image = info[.originalImage] as? UIImage{
      
      imageViewOutlet.image = image
    }else{
      print("Problems")
    }
    
    dismiss(animated: true, completion: nil)
  }
  
  

  @IBAction func chooseButtonPressed(_ sender: UIButton) {
    let imagePickerController = UIImagePickerController()
    imagePickerController.delegate = self
    imagePickerController.sourceType = UIImagePickerController.SourceType.photoLibrary
    imagePickerController.allowsEditing = false
    
    present(imagePickerController, animated: true, completion: nil)
  }
  
}


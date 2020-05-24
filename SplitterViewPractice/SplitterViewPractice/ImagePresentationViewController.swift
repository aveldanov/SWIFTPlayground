//
//  ImagePresentationVC.swift
//  SplitterViewPractice
//
//  Created by Veldanov, Anton on 5/23/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ImagePresentationViewController: UIViewController {

  @IBOutlet weak var itemImageView: UIImageView!
  
  var image: UIImage?
  override func viewDidLoad() {
    super.viewDidLoad()

    itemImageView.image = image
    
  }




}


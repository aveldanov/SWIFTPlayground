//
//  DetailViewController.swift
//  test
//
//  Created by Veldanov, Anton on 5/23/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

  var image: UIImage?

  @IBOutlet weak var itemImageView: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    itemImageView.image = image
  }




}


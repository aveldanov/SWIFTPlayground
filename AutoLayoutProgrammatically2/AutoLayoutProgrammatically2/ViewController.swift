//
//  ViewController.swift
//  AutoLayoutProgrammatically2
//
//  Created by Veldanov, Anton on 4/24/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let imageView = UIImageView(image: #imageLiteral(resourceName: "image"))
    view.addSubview(imageView)
    imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
  }


}


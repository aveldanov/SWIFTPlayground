//
//  ParallaxViewCell.swift
//  ParallaxCellPractice
//
//  Created by Veldanov, Anton on 5/22/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ParallaxViewCell: UITableViewCell {

  @IBOutlet weak var itemImageView: UIImageView!
  
  @IBOutlet weak var descLabel: UILabel!
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  func configureCell(withImage image:UIImage, andDescription desc:String){
    
    itemImageView.image = image
    descLabel.text = desc
  }
  
  
  func setupParallax(){
    
    let min = -30
    let max = 30
    
  }

}

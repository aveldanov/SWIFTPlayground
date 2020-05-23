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
    itemImageView.clipsToBounds = false
    setupParallax()
  }
  
  func configureCell(withImage image:UIImage, andDescription desc:String){
    
    itemImageView.image = image
    descLabel.text = desc
  }
  
  
  func setupParallax(){
    

    
    let amount = CGFloat(30)


    
    
    let horizontal = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
    horizontal.minimumRelativeValue = -amount
    horizontal.maximumRelativeValue = amount

    let vertical = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
    vertical.minimumRelativeValue = -amount
    vertical.maximumRelativeValue = amount

    let group = UIMotionEffectGroup()
    group.motionEffects = [horizontal, vertical]
   
    itemImageView.addMotionEffect(group)
    
  }
  
}

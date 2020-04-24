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
  
    let blueView = UIView()
    blueView.backgroundColor = .blue
    
    let greenView = UIView()
    greenView.backgroundColor = .green
    
    
//    view.addSubview(redView)
//    view.addSubview(blueView)
    
    [redView, blueView, greenView].forEach {view.addSubview($0)}
    
    
    
    redView.anchor(
      top: view.safeAreaLayoutGuide.topAnchor,
      leading: nil,
      bottom: nil,
      trailing: view.safeAreaLayoutGuide.trailingAnchor,
      padding: .init(top: 0, left: 0, bottom: 0, right: 12),
      size: .init(width: 150, height: 0) )
    
    redView.heightAnchor.constraint(equalTo: redView.widthAnchor).isActive = true
    
    
    blueView.anchor(top: redView.bottomAnchor, leading: nil, bottom: nil, trailing: redView.trailingAnchor, padding: .init(top: 12, left: 0, bottom: 0, right: 0))
    
    blueView.widthAnchor.constraint(equalTo: redView.widthAnchor).isActive = true
    blueView.heightAnchor.constraint(equalTo: blueView.widthAnchor).isActive = true

    
    
    greenView.anchor(top: redView.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, bottom: blueView.bottomAnchor, trailing: redView.leadingAnchor, padding: .init(top: 0, left: 12, bottom: 0, right: 12))
    
    
    // enables autolayout
    //    redView.translatesAutoresizingMaskIntoConstraints = false
    //
    //
    //    redView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    //    redView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    //    redView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    //    redView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    
    //    redView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor, padding: .init(top: 0, left: 16, bottom: 0, right: 16), size: .init(width: 100, height: 100))
  }
}




extension UIView{
  func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, trailing: NSLayoutXAxisAnchor?, padding: UIEdgeInsets = .zero, size: CGSize = .zero){
    translatesAutoresizingMaskIntoConstraints = false
    
    
    if let top = top{
      topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
    }
    if let leading = leading{
      leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
    }
    
    if let trailing = trailing{
      trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
    }
    
    if let bottom = bottom{
      bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
    }
    
    
    if size.width != 0{
      widthAnchor.constraint(equalToConstant: size.width).isActive = true
      
    }
    
    
    if size.height != 0{
      heightAnchor.constraint(equalToConstant: size.height).isActive = true
      
    }
    
  }
  
  
  
}


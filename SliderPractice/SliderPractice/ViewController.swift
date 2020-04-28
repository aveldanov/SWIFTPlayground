//
//  ViewController.swift
//  SliderPractice
//
//  Created by Veldanov, Anton on 4/27/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  @IBOutlet weak var slider: UISlider!
  
  
  @IBOutlet weak var tablesViewOutlet: UITableView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  
    return 50
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
    cell.textLabel?.text = String(Int(slider.value * 20) * (indexPath.row + 1))
    return cell
  }
  
  
  

  @IBAction func sliderChanged(_ sender: UISlider) {
    
    print(slider.value)
    tablesViewOutlet.reloadData()
  }
  
}


//
//  ViewController.swift
//  SeguePractice
//
//  Created by Veldanov, Anton on 4/30/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  var activeRow = 0
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

// pass a vairable to secondView
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "toSecondViewController"{
      
      let secondVC = segue.destination as! SecondViewController
      
      secondVC.actRow = activeRow    }
  }
  
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 4
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
    
    cell.textLabel?.text = "Row \(indexPath.row)"
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    activeRow = indexPath.row
    performSegue(withIdentifier: "toSecondViewController", sender: nil)
  }
  
  
  
}


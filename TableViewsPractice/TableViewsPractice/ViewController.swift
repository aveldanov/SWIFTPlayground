//
//  ViewController.swift
//  TableViewsPractice
//
//  Created by Veldanov, Anton on 4/27/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  
  override func viewDidLoad() {
    super.viewDidLoad()

  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 50
  }
  
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
    
    
    cell.textLabel?.text = String(indexPath.row + 1)
    
    return cell
  }


}


extension ViewController{
  
  func numbers()->[Int]{
    var arrayList = [Int]()
    for i in 1...50{
      arrayList.append(i)
    }
    
    return arrayList
  }
  
  
}


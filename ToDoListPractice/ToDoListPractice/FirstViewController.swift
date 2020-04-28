//
//  FirstViewController.swift
//  ToDoListPractice
//
//  Created by Veldanov, Anton on 4/27/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  let defaults = UserDefaults.standard

  var items = [String]()

  @IBOutlet weak var tableViewItems: UITableView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
 


  }
  
  
  override func viewWillAppear(_ animated: Bool) {
    
  }

  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return items.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
    
    
    cell.textLabel?.text = items[indexPath.row]
    return cell
    
    
  }
  
  
  override func viewDidAppear(_ animated: Bool) {
    
    let itemsObject = defaults.object(forKey: "items")
     
     if let tempItems = itemsObject as? [String]{
       items = tempItems
     }
    
    tableViewItems.reloadData()
    
  }

}


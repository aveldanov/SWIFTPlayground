//
//  ListTableViewController.swift
//  ParallaxCellPractice
//
//  Created by Veldanov, Anton on 5/22/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ListTableViewController: UITableViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.delegate = self
    tableView.dataSource = self
  }
  
  
  
  override func numberOfSections(in tableView: UITableView) -> Int {
    1
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 4
  }
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    <#code#>
  }
  

}


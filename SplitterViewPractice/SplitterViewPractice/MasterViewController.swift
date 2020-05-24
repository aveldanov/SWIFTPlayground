//
//  MasterViewController.swift
//  SplitterViewPractice
//
//  Created by Veldanov, Anton on 5/23/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {




  override func viewDidLoad() {
    super.viewDidLoad()

  }




  // MARK: - Segues

//  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    if segue.identifier == "showDetail" {
//        if let indexPath = tableView.indexPathForSelectedRow {
//            let object = objects[indexPath.row] as! NSDate
//            let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
//            controller.detailItem = object
//            controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
//            controller.navigationItem.leftItemsSupplementBackButton = true
//        }
//    }
//  }

  // MARK: - Table View

  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return imageArray.count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

    cell.textLabel!.text = namesArray[indexPath.row]
    cell.backgroundColor = colorsArray[indexPath.row]
    return cell
  }





}


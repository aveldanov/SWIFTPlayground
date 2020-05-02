//
//  ViewController.swift
//  CoreDataPractice
//
//  Created by Veldanov, Anton on 5/1/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = appDelegate.persistentContainer.viewContext
    
    let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
//MARK: - set data
//    newUser.setValue("anton", forKey: "username")
//    newUser.setValue("myPass", forKey: "password")
//    newUser.setValue(35, forKey: "age")
    
    newUser.setValue("john", forKey: "username")
    newUser.setValue("johnspass", forKey: "password")
    newUser.setValue(40, forKey: "age")
    
    do {
      try context.save()
      print("saved")
    }catch{
      
      print("Error", error)
    }
    
//MARK: - fetch data
    let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
    
    request.returnsObjectsAsFaults = false
    
    do{
      let results = try context.fetch(request)
      
      if  results.count > 0{
        
        for result in results as! [NSManagedObject]{
          
          if let username = result.value(forKey: "username") as? String{
            
            print(username)
          }
          
        }
        
      }else{
        
        print("No results")
        
      }
      
      
      
    }catch{
      print("Could not fetch results")
    }
    
    
    
  }
  
  
  


}


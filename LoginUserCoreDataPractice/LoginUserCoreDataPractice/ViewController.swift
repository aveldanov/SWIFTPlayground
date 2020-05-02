//
//  ViewController.swift
//  LoginUserCoreDataPractice
//
//  Created by Veldanov, Anton on 5/1/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {


  
  @IBOutlet weak var nameLabel: UILabel!
  
  
  @IBOutlet weak var textFieldOutlet: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()

   
     let appDelegate = UIApplication.shared.delegate as! AppDelegate
     let context = appDelegate.persistentContainer.viewContext
    
//    let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
//    newUser.setValue("anton", forKey: "username")

      let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
    
    request.returnsObjectsAsFaults = false
    
    
    do {
      
      let results = try context.fetch(request)
      for result in results as! [NSManagedObject]{
        
        if let username = result.value(forKey: "username") as? String{
          textFieldOutlet.alpha = 0
          nameLabel.alpha = 1
          nameLabel.text = "Hi " + username
          print(username)

        }
        

      }
    }catch{
      
      print("Error", error)
    }




  }

  
  @IBAction func loginButtonPressed(_ sender: UIButton) {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = appDelegate.persistentContainer.viewContext

   let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
    newUser.setValue(textFieldOutlet.text, forKey: "username")
    
    do{
      
      try context.save()
      textFieldOutlet.alpha = 0
      nameLabel.alpha = 1
      nameLabel.text = "Hi " + textFieldOutlet.text!
      
      
      
      
    }catch{
      
      print(error)
    }
    
  }

  
  
  

}


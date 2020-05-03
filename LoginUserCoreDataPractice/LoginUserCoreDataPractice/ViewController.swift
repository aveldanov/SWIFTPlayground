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
  
  var isLoggedIn = false
  
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var loginOutlet: UIButton!
  @IBOutlet weak var logoutOutlet: UIButton!
  
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
          logoutOutlet.alpha = 1
          loginOutlet.alpha = 0
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
    
   
    
    if isLoggedIn{
      
      let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
      do{
        let results = try context.fetch(request)
        if results.count > 0{
          for result in results as! [NSManagedObject]{
            result.setValue(textFieldOutlet.text, forKey: "username")
            
            do{
              
             try context.save()
              
            }catch{
              
              
              print("User update failed!")
            }
            
            
            
            
            
          }
          nameLabel.text = "hi there" + textFieldOutlet.text!
        }
      }catch{
        
        print("update username failed")
      }
      
    }else{
      
      let newUser = NSEntityDescription.insertNewObject(forEntityName: "Users", into: context)
         newUser.setValue(textFieldOutlet.text, forKey: "username")
      do{
        
        try context.save()
        textFieldOutlet.alpha = 0
        nameLabel.alpha = 1
        logoutOutlet.alpha = 1
        nameLabel.text = "Hi " + textFieldOutlet.text!
        loginOutlet.setTitle("Login!", for: .normal)
        
        isLoggedIn = true
        
      }catch{
        
        print(error)
      }
      
    }
    
    
    

    
  }
  
  
  @IBAction func logoutButtonPressed(_ sender: UIButton) {
    // delete everything from coredata
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = appDelegate.persistentContainer.viewContext
    
    let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
    
    do{
      let results = try context.fetch(request)
      if results.count > 0{
        for result in results as! [NSManagedObject]{
          context.delete(result)
          
          do{
            
            try context.save()
            
          }catch{
            
            print("individual delete failed")
          }
          
          
          
          
        }
        textFieldOutlet.alpha = 1
        nameLabel.alpha = 0
        loginOutlet.alpha = 0
        loginOutlet.alpha = 1
        isLoggedIn = false
        loginOutlet.setTitle("Update User Name", for: .normal)

        
      }
      
      
      
      
      
      
    }catch{
      
      print("Delete - failed")
    }
    
    
  }
  
  
  
}


//
//  ViewController.swift
//  ImagesDownloadFromWebPractice
//
//  Created by Veldanov, Anton on 5/2/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var imageView: UIImageView!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
    if documentsPath.count > 0 {
      
      let documentDirectory = documentsPath[0]
        
        let restorePath = documentDirectory + "/spiderman.png"
        imageView.image = UIImage(contentsOfFile: restorePath)
          
      
       
      
      
      
    }
    
    
    
    
    
    
//    
//    
//    let url = URL(string: "https://image.blockbusterbd.net/00416_main_image_04072019225805.png")!
//    
////    let url = URL(string: "https://www.intuit.com/blog/wp-content/uploads/2019/12/Building-20-MTV.jpg?resize=1536,1025")!
//    
//    
//    let request = NSMutableURLRequest(url: url)
//    let session = URLSession.shared
//    
//    
//    //    let task2 = session.da
//    
//    
//    
//    let task = session.dataTask(with: url) { (data, response, error) in
//      
//      
//      if error != nil {
//        print(error!)
//      }else{
//        if let safeData = data{
//          print(safeData)
//          
////          DispatchQueue.main.sync {
////            self.imageView.image = UIImage(data: safeData)
////          }
//          
//          
//                    if let backImage = UIImage(data: safeData){
//          
//                      DispatchQueue.main.sync {
//          
//          
//                                    self.imageView.image = backImage
//                      }
//                      
//                      let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
//                      if documentsPath.count > 0 {
//                        
//                        if let documentDirectory = documentsPath[0] as? String{
//                          
//                          let savePath = documentDirectory + "/spiderman.png"
//                          do {
//                            try backImage.pngData()?.write(to: URL(fileURLWithPath: savePath))
//                          }catch{
//                            
//                            print("process error",error)
//                          }
//                         
//                        }
//                        
//                        
//                      }
//                      
//                      
//                      
//                    }
//          
//          
//        }
//        
//        
//      }
//      
//    }
//    
//    task.resume()
//    
//    
//    
//    
//    
    
    
    
  }
}







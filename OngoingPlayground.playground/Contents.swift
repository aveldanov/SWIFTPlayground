import UIKit




//let number = 643
//let n = 43

// Is it prime


// 2,3,5,7,11,13,17,19
// 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199

//for i in 2...100{
//    if i != 2 && i%2 == 0{
//      print("\(i) is not prime1")
//    }
//    else if i != 3 && i%3 == 0 {
//      print("\(i) is not prime2")
//    }else if i != 5 && i%5 == 0{
//      print("\(i) is prime3")
//    }else if i != 7 && i%7 == 0{
//      print("\(i) is not prime4")
//    }else{
//      print("\(i) PRIME")
//  }
//  
//}

  
//
//func isPrime(num: Int) -> Bool{
//  print("Number",num)
//  if num == 1 {return false}
//
//  var i = 2
//  while i < num{
//    if num % i == 0{return false}
//
//    i += 1
//
//  }
//return true
//
//}
//
//
//
//print(isPrime(num: 643))



//
//func isPrime(num: Int) -> Bool{
//  if num == 1 {return false}
//
//  if num != 2 && num%2 == 0{
////    print(num)
//      return false
//    }else if num != 3 && num%3 == 0 {
////    print(num)
//      return false
//    }else if num != 5 && num%5 == 0{
////    print(num)
//
//      return false
//
//    }else if num != 7 && num%7 == 0{
////    print(num)
//
//      return false
//
//
//  }else{
//    print(num)
//
//      return true
//  }
//}





  func isPrime(num: Int) -> Bool{
    if num == 1 {return false}
    var i = 2

    while i < num{

      if num % i == 0{
        return false
      }
      i += 1
    }
    return true

  }
  
  
  
 

 print(isPrime(num: 121))


import UIKit

var str = "Hello"

var newStr = str + " Anton!"


for char in newStr{
  
  print(char)
  
}


// NS - "next step" - Steve Job's company
// NS String has more way to manipulate than String
let newTypeString = NSString(string: newStr)

newTypeString.substring(to: 5)

NSString(string: newTypeString.substring(from: 6)).substring(to: 5)

newTypeString.substring(with: NSRange(location: 6, length: 5))


if newTypeString.contains("ant"){
  print(true)
}else{
  print(false)
}

newTypeString.components(separatedBy: " ")

newTypeString.uppercased
newTypeString.lowercased

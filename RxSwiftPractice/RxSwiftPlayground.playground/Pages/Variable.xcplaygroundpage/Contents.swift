import RxSwift
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

var variable = Variable<String>("Hello")

//print(variable.value)
// converting into OBSERVABLE variable

variable.asObservable().subscribe(onNext: {
  print($0)
})


variable.value = "World"


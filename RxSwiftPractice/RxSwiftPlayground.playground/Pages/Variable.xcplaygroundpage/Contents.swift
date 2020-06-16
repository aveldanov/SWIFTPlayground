import RxSwift
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

var variable = Variable<String>("Hello")

variable.asObservable() // converting into OBSERVABLE variable

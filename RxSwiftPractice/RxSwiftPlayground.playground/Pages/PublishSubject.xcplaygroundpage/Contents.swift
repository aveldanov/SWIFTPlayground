import RxSwift
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

//GIVES ELEMENT AFTER SUBSCRIPTION!!!!

var publishSubject = PublishSubject<String>()


publishSubject.onNext("Hello")
publishSubject.onNext("World")

// prints out what happens after
let pubSubjectSubscription = publishSubject.subscribe(onNext: {
  print($0)
})

publishSubject.onNext("WOW")


let pubSubjectSubscription2 = publishSubject.subscribe(onNext: {
  print($0)
})
publishSubject.onNext("WOW2")

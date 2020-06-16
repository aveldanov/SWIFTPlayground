import RxSwift
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

// GIVES MOST RECENT SUBJECT AND EVERYTHING AFTER

var behaivorSubject = BehaviorSubject(value: "Value A")

let subscription1 = behaivorSubject.subscribe(onNext: {
  print("Subscription 1",$0)
})


behaivorSubject.onNext("Value B")
behaivorSubject.onNext("Value C")



let subscription2 = behaivorSubject.subscribe(onNext: {
  print("Subscription 2",$0)
})

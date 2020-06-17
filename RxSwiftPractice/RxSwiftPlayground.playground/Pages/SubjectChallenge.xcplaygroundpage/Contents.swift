import RxSwift
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

//
////after subsciption
//let publishSubject = PublishSubject<String>()
//
//
//publishSubject.subscribe(onNext: {
//  print($0)
//})
//
//publishSubject.onNext("Mov1")
//publishSubject.onNext("Mov2")
//publishSubject.onNext("Mov3")
//
//
//let behaivorSubject = BehaviorSubject<Double>(value: 0.00)
//
//
//var bankBalance = Variable<Double>(9.99)
//
//bankBalance.asObservable().subscribe(onNext:{
//  print($0)
//})
//
//behaivorSubject.onNext(3.44)
//behaivorSubject.onNext(3.44)
//behaivorSubject.onNext(3.44)
//
//bankBalance.value = behaivorSubject.onNext(3.33)
//



// has BUFFER

let twitterSubject = ReplaySubject<String>.create(bufferSize: 3)


twitterSubject.subscribe(onNext: {
  print("Followed at: ",$0)
})



twitterSubject.onNext("Sub1")
twitterSubject.onNext("Sub2")
twitterSubject.onNext("Sub3")
twitterSubject.onNext("Sub4")
twitterSubject.onNext("Sub5")


let newTwitterUser = twitterSubject.subscribe(onNext: {
  print("new",$0)
})

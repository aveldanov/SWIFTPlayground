import RxSwift
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true


// FIRST SUBSCRIPTION RECIEVES ALL OF IT
// APPLICATION - recent hisgtory like twitter, youtube etc

var accountSubject = ReplaySubject<Double>.create(bufferSize: 3)
accountSubject.onNext(992.99)
accountSubject.onNext(88.88)


var accountManager = accountSubject.subscribe(onNext: {
  print("Transaction1 amount: $",$0)
})


accountSubject.onNext(12.99)
accountSubject.onNext(223.50)
accountSubject.onNext(3233.50)
accountSubject.onNext(4234555.50)
print("")

var lastThreeTransactions = accountSubject.subscribe(onNext: {
  print("Transaction2 amount: $",$0)
})

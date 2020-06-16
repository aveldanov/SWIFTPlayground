import RxSwift
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true


let disposableBag = DisposeBag()

let numberSequence = Observable.from([1,2,4,5,6])


let subscribeNumber = numberSequence.subscribe(onNext: {
  print($0*5)
  }).disposed(by: disposableBag)

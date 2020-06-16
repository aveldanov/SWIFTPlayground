import RxSwift
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true


//var observable: Observable<String>
let disposeBag = DisposeBag()

let numberSequence = Observable.just(5)

let numberSubscription = numberSequence.subscribe(onNext: {
  print($0)
}).disposed(by: disposeBag)


let helloSequence = Observable.from(["H","e","l","l","o"])

let helloSubscription = helloSequence.subscribe { (event) in
  switch event {
  case .next(let value):
    print(value)
    
  case .error(let error):
      print(error)
  case .completed:
      print("Completed")

  }
}.disposed(by: disposeBag)


// Disposing
//helloSubscription.dispose() // free up memory -> explicit call not recommended -> use DisposeBag











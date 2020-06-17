import RxSwift
import PlaygroundSupport
import Foundation

PlaygroundPage.current.needsIndefiniteExecution = true


let disposeBag = DisposeBag()



struct Game{
  var price: BehaviorSubject<Double>
  
  
}


var overwatch = Game(price: BehaviorSubject(value: 124.33))
let starWar = Game(price: BehaviorSubject(value: 1.33))
print(overwatch.price.value())
let gameSubject = PublishSubject<Game>()

do{
  try overwatch(o)
}catch{
  
  
}

//gameSubject.subscribe(onNext: {
//  print($0.price.value)
//})

gameSubject
  .flatMap{
    
    $0.price.asObservable()
}
.subscribe(onNext: {
  print("Game price: $",$0)
}
).disposed(by: disposeBag)





gameSubject.onNext(overwatch)
gameSubject.onNext(starWar)

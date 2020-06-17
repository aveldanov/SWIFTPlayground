import RxSwift
import PlaygroundSupport
import Foundation

PlaygroundPage.current.needsIndefiniteExecution = true

let disposeBad = DisposeBag()

let formatter = NumberFormatter()
formatter.numberStyle = .spellOut // 1 = "one"


Observable<NSNumber>.of(123,47,9)
  .map{
    formatter.string(from: $0) // 123 -> "123" -> "one two three"
    
    
}
.subscribe(onNext: {
  print($0)
})



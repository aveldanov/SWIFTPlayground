import RxSwift
import PlaygroundSupport
import Foundation

PlaygroundPage.current.needsIndefiniteExecution = true


let disposeBag = DisposeBag()


Observable.of("Elon", "Steve", "Jeff","Mark","Anton","Jerry")
  .filter{
    $0.contains("a")
}.subscribe(onNext:{
  print($0)
  }).disposed(by: disposeBag)


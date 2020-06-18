import RxSwift
import PlaygroundSupport
import Foundation

PlaygroundPage.current.needsIndefiniteExecution = true


let disposeBag = DisposeBag()


let carMakes = Observable.of("deLorean","Bugatti","Lambo")
let carModels = Observable.of("DMC-12","Veron","Diablo")



Observable.zip(carMakes,carModels){
  
  $0 + " " + $1
  
}.subscribe(onNext:{
  print($0)
  }).disposed(by: disposeBag)




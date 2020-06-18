import RxSwift
import PlaygroundSupport
import Foundation

PlaygroundPage.current.needsIndefiniteExecution = true



let disposeBag = DisposeBag()

//MAP
//let names = Observable.of("Anton","Zina","Katya")
//
//
//names.map{
//  $0.uppercased()
//}.subscribe(onNext: {
//
//  print($0)
//  }).disposed(by: disposeBag)


//FlatMap - fail
//var carPrice = BehaviorSubject<Int>
//
//let carSubject = PublishSubject<Int>()
//
//
//
//carSubject.flatMap{
//
//}
//
//
//carPrice.onNext(20)
//carPrice.onNext(30)


//Filter

//struct Element{
//  var name: String
//  var abbr: String
//  var perNum: Int
//}
//
//
//let aur = Element(name: "Gold", abbr: "Au", perNum: 2)
//let sil = Element(name: "Silver", abbr: "Si", perNum: 4)
//let bor = Element(name: "Bor", abbr: "Bo", perNum: 24)
//
//Observable.of(aur,sil,bor).filter{
//  
//  $0.perNum <= 4
//}.subscribe{
//  print($0.element?.name ?? "")
//  print($0.element?.abbr ?? "")
//  print($0.element?.perNum ?? "")
//
//}.disposed(by: disposeBag)


//Zip


let nameObservable = Observable.of("Anton", "Sveta")
let userNameObservable = Observable.of("Vel","Vela")

Observable.zip(nameObservable,userNameObservable){
  $0 + " " + $1
}.subscribe(onNext:{
  print($0)
  }).disposed(by: disposeBag)

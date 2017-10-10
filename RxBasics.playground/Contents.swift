//: Playground - noun: a place where people can play

import UIKit
import RxSwift

/*
 executeProcedure(for: "just"){
    
    let observable = Observable.just("Example of Just Operator!")
    observable.subscribe({ (event: Event<String>) in
        print(event)
    })
}

executeProcedure(for: "of"){
    
    let observable = Observable.of(10, 20, 30)
    
    observable.subscribe({
        print($0)
    })
}
 

executeProcedure(for: "from"){
   let disposeBag = DisposeBag()
    
   let subscribed = Observable.from([10, 20,30])
    .subscribe(onNext:{
            print($0)
    })
    subscribed.disposed(by: disposeBag)
    
    Observable.from([1, 2, 3])
        .subscribe(onNext: {print($0)},
                   onCompleted: {print("Completed the events")},
                   onDisposed: {print("Sequence terminated hence Disposed")}
        )
        .disposed(by: disposeBag)
}


executeProcedure(for: "error"){
    enum CustomError: Error{
        case defaultError
    }
    
    let disposeBag = DisposeBag()
    Observable<Void>.error(CustomError.defaultError)
        .subscribe(onError: {print($0)})
        .disposed(by: disposeBag)
}
 



executeProcedure(for: "PublishSubject"){
    
    enum CustomError: Error{
        case defaultError
    }
    let pubSubject = PublishSubject<String>()
    let disposeBag = DisposeBag()
    
    pubSubject.subscribe {
        print($0)
    }
    .disposed(by: disposeBag)
    
    pubSubject.on(.next("First Event"))
    //pubSubject.onError(CustomError.defaultError)
    //pubSubject.onCompleted()
    pubSubject.onNext("Second Event")
    
    let newSubcription = pubSubject.subscribe(onNext: {
        print("New Subscription", $0)
    })
    
    pubSubject.onNext("I am New!")
    newSubcription.dispose()
    pubSubject.onNext("Fourth Event")
}


executeProcedure(for: "BehaviorSubject"){
    let disposeBag = DisposeBag()
    
    let behSubject = BehaviorSubject(value: "Test")
    let initialSubscripton = behSubject.subscribe(onNext: {
        print("Line number is \(#line) and value is" , $0)
    })
    behSubject.onNext("Second Event")
    
    let subsequentSubscription = behSubject.subscribe(onNext: {
        print("Line number is \(#line) and value is" , $0)
    })
    
    initialSubscripton.disposed(by: disposeBag)
    subsequentSubscription.disposed(by: disposeBag)
}


executeProcedure(for: "ReplaySubject"){
    let disposeBag = DisposeBag()
    
    let repSubject = ReplaySubject<String>.create(bufferSize: 3)
    
    repSubject.onNext("First")
    repSubject.onNext("Second")
    repSubject.onNext("Third")
    
    repSubject.onNext("Fourth")
    
    repSubject.subscribe(onNext: {
        print($0)
    })
        .disposed(by: disposeBag)
    
    repSubject.onNext("Fifth")
    repSubject.subscribe(onNext: {
        print("New Subscription: ", $0)
    })
        .disposed(by: disposeBag)
}
 */

executeProcedure(for: "Variable") { 
    let disposeBag = DisposeBag()
    
    let variable = Variable(1)
    variable.asObservable()
        .subscribe{
            print($0)
        }
        .disposed(by: disposeBag)
    variable.value
    variable.value = 2
}




















































import UIKit
import Combine
import PlaygroundSupport


var subscription = Timer.publish(every: 1, on: .main, in: .common)
    .autoconnect()
    .print("stream")
    .sink {output in
        print("finish stream with \(output)")
    }receiveValue:{value in
        print("receive value\(value)")
    }

//let integers = (0...3)
//integers.publisher
//    .sink { print("Received \($0)") }

RunLoop.main.schedule(after: .init(Date(timeIntervalSinceNow: 5))) {
    print("----Cancel subscription----")
    //subscription.cancel()
   // subscription = nil
}



//func sink(receiveValue: @escaping ((Self.Output) -> Void)) -> AnyCancellable
//sink(receiveValue:)
//Attaches a subscriber with closure-based behavior to a publisher that never fails.

//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

print(Thread.isMainThread)


class ThreadTest{
    func createThread(){
        Thread.detachNewThreadSelector(#selector(printx), toTarget: self, with: nil)
    }
    
    @objc func printx(){
        print("Thread loop running")
    }
}


let threadClass = ThreadTest()

threadClass.createThread()

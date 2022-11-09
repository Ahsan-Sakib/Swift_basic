import UIKit

var greeting = "Hello, playground"

typealias abc = (a:Int,b:Int)

func add(input : abc){
    print(input.a + input.b)
}

add(input: abc(10,12))

import Foundation

var songs:[Any] = ["a","b",3]
type(of: songs)

//some sort of error coding

//variable 'abc' passed by reference before being initialized
//var abc:[String]
//
//abc[0] = "sfhsdfhsdh"


var abc:[String] = [String]()

// Index out of range
//abc[0] = "sfhsdfhsdh"

abc.append("10")
abc.append("11")
abc.append("12")

abc+=abc


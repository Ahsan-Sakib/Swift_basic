import Foundation


//Use reduce to combine all items in a collection to create a single new value.


///Refs: https://abhimuralidharan.medium.com/higher-order-functions-in-swift-filter-map-reduce-flatmap-1837646a63e8


let numberArray = [1,2,3];



// MARK:  closure in last position

let sumInTotal = numberArray.reduce(0){
    n1,n2 in n1 + n2;
};
print(sumInTotal)


// MARK:  similar as before
let reducedNumberSum = numberArray.reduce(0) { $0 + $1 }
print(reducedNumberSum)


// MARK:  alternative way

let againSum = numberArray.reduce(0,+)

print(againSum)


let codes = ["abc","def","ghi"]
let text = codes.reduce("") { $0 + $1} //the result is "abcdefghi"

let text1 = codes.reduce("",+) //the result is "abcdefghi"


let bookAmount = ["harrypotter":100.0, "junglebook":1000.0]

let reduceIndictionaryValue = bookAmount.values.reduce(0.0) { result, value in
    return result + value
}

print(reduceIndictionaryValue)

let reduceIndictionaryKey = bookAmount.keys.reduce("Books are ") { result, value in
    return result + value + " "
}

print(reduceIndictionaryKey)

let setValue: Set = [1,4,1,2,5,3,2,4,5]

print(setValue)

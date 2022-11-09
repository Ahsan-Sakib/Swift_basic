import Foundation

var x = 1
repeat{
    x = x + 1
    print(x)
}while(x<5);
        
for num in 0...5{
    print(num)
}

for i in stride(from: 1, to: 10, by: 2) {
    print(i)
}



let languages = ["Swift", "Java", "Go", "JavaScript"]

for language in languages {
      print(language)
}

// program to display numbers from 1 to 5

// initialize the variable
var i = 1, n = 5

// while loop from i = 1 to 5
while (i <= n) {
  print(i)
   i = i + 1
}


var currentLevel:Int = 0, finalLevel:Int = 5
let gameCompleted = true
while (currentLevel <= finalLevel) {

  if gameCompleted {
    print("You have passed level \(currentLevel)")
      currentLevel += 1
  }
}
print("Level Ends")

// program to display numbers

//var i = 1, n = 5
//
//// repeat...while loop from 1 to 5
//repeat {
//
//  print(i)
//
//  i = i + 1
//
//} while (i <= n)

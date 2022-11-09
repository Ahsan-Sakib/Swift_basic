//The guard statement is similar to the if statement with one major difference. The if statement runs when a certain condition is met. However, the guard statement runs when a certain condition is not met.

//guard expression else {
//  // statements
//  // control statement: return, break, continue or throw.
//}

var i = 2

while (i <= 10) {
    
  // guard condition to check the even number
  guard i % 2 == 0 else {
   
     i = i + 1
    continue
  }

  print(i)
  i = i + 1
}


func checkAge() {
    
  var age: Int? = 22

  guard let myAge = age else {
    print("Age is undefined")
    return
  }

  print("My age is \(myAge)")
}

checkAge()


//
//func voteEligibility() {
//
//  var age = 42
//
//  if age >= 18 {
//  print("Eligible to vote")
//  }
//  else {
//  print("Not eligible to vote")
//  }
//
//}
//
//voteEligibility()
//
//
//func voteEligibility() {
//
//  var age = 42
//
//  guard age >= 18 else {
//  print("Not Eligible to vote")
//  return
//  }
//
//  print("Eligible to vote")
//}
//
//voteEligibility()

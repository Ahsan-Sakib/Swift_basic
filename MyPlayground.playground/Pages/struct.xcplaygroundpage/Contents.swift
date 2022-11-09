//When use class ?
//need a subclass
//one of a kind
//value = identity



//struct good thing

//Simple Data Types
//Thread Safety
//Mostly Structs Scenario
//Don’t Need Inheritance


//Both class and struct

//Both structs and classes can define properties to store values, and they can define functions
//They can define subscripts to provide access to values with subscript syntax
//They can define initializers to set up their initial state, with init()
//They can be extended with extension (this is important!)
//They can conform to protocols, for example to support Protocol Oriented Programming
//They can work with generics to provide flexible and reusable types

//class has

//Classes can inherit from another class, like you inherit from UIViewController to create your own view controller subclass
//Classes can be deinitialized, i.e. you can invoke a deinit() function before the class is destroyed
//Classes are reference types and structs are value types


struct Person{
    var name: String
    var age: Int
    
    func describe(){
        print("My name is \(name) and age is \(age)")
    }
}


let person1 = Person(name: "Sakib", age: 12)
var person2 = person1

person2.age = 20
person2.name = "Time urban"

person1.describe()
person2.describe()


class Book{
    var name: String
    var numberofPage:Int
    
    init(name:String,nP:Int){
        self.name = name;
        self.numberofPage = nP;
    }
    
    func bookDetails(){
        print("This is book")
    }
}

class ComicBook: Book{
//    var a: String
//    var b:Int
//
//    override init(name:String,nP:Int){
//        super.init(name: name, nP: np)
//        self.a = name;
//        self.b = nP;
//    }
    
   override func bookDetails(){
       super.bookDetails()
       print("This is comicBook")
    }
}


let bookInstance = ComicBook(name: "", nP: 10)

bookInstance.bookDetails()

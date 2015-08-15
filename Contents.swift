//: Playground - noun: a place where people can play

/*: 
# TypeSafey
Swift is a type safe language. A type safe language encourages you to be clear about the types of values your code can work with. If part of your code expects a String, you can’t pass it an Int by mistake.


Type-checking helps you avoid errors when you’re working with different types of values. However, this doesn’t mean that you have to specify the type of every constant and variable that you declare. If you don’t specify the type of value you need, Swift uses type inference to work out the appropriate type. Type inference enables a compiler to deduce the type of a particular expression automatically when it compiles your code, simply by examining the values you provide.
*/
/*:

For example, if you assign a literal value of 42 to a new constant without saying what type it is, Swift infers that you want the constant to be an Int, because you have initialized it with a number that looks like an integer:
*/

let meaningOfLife = 42
// meaningOfLife is inferred to be of type Int

//Likewise, if you don’t specify a type for a floating-point literal, Swift infers that you want to create a Double:

let pi = 3.14159
// pi is inferred to be of type Double

/*:

### Tuples

Tuples group multiple values into a single compound value. The values within a tuple can be of any type and do not have to be of the same type as each other.
*/

let http404Error = (404, "Not Found")

/*:
# Type Aliases
Type aliases define an alternative name for an existing type. You define type aliases with the typealias keyword.

Type aliases are useful when you want to refer to an existing type by a name that is contextually more appropriate, such as when working with data of a specific size from an external source

typealias AudioSample = Unit16
*/

/*: 

# Pattern Matching

The main type of switch is the type/sub-class pattern. If your switch conditional in this clause is a class, then class will have sub- or superclasses. In this example, the UIView is matched against the different possible types of views: UIImageView, UILabel, and UITableView. The “as” keyword differs from the “is” keyword in that “as” allows you to use the let binding and do something with myView, while “is” is used simply to check the type.
*/

import UIKit

func getView() -> UIView {
    
    return UIView()
}

let myView: UIView = getView()

switch myView {
    
    case is UIImageView:
        print("It's an image view")
    
    case let lbl as UILabel:
        print("It's a label, with text \(lbl.text)")

    case let tv as UITableView:
        print("It's a table view, with \(tv.numberOfSections) sections")
    
    default:
        print("It's some other type of view")
}

//Immutable



/*: 

# Similarities classes and structures

Classes and structures in Swift have many things in common. Both can:

* Define properties to store values
* Define methods to provide functionality
* Define subscripts to provide access to their values using subscript syntax
* Define initializers to set up their initial state
( Be extended to expand their functionality beyond a default implementation
* Conform to protocols to provide standard functionality of a certain kind
*/

/*:

## Classes have additional capabilities that structures do not:

* Inheritance enables one class to inherit the characteristics of another.
* Type casting enables you to check and interpret the type of a class instance at runtime.
* Deinitializers enable an instance of a class to free up any resources it has assigned.
* Reference counting allows more than one reference to a class instance.
*/

import UIKit

var str = "Hello, playground"

struct User {
    
    let id: Int
    let firstName: String
    let lastName: String
    let active: Bool
    
}

class FunctionsOnCollections {
    
    let user1: User = User(id: 1, firstName: "Harish", lastName: "Yarlagadda", active: true)
    let user2: User = User(id: 2, firstName: "Mark", lastName: "Flowers", active: true)
    let user3: User = User(id: 3, firstName: "Chris", lastName: "Howie", active: false)
    let user4: User = User(id: 4, firstName: "Parthasara­thy", lastName: "Gudivada", active: false)
    let user5: User = User(id: 5, firstName: "Daniel", lastName: "Strokis", active: true)
    
    func createUsers() -> [User] {
     
        return [user1, user2, user3, user4, user5];
    }
    
    func activeUsers(users: [User]) -> [User] {
        
        let users = createUsers()
        
        let activeUsers = users.filter { (myuser: User) -> Bool in
            return myuser.active
        }
        
        return activeUsers
    }
    
}

let functionsOnCollections = FunctionsOnCollections()
let totalUsers = functionsOnCollections.createUsers()
print(totalUsers)
print("number of users \(totalUsers.count)")

let activeUsers = functionsOnCollections.activeUsers(totalUsers)

print(activeUsers)
print("number of active user \(activeUsers.count)")

/*: 
# Higher Order Function
Functions that take another funtion or functions that returns another function are called Higher Order functions
*/

let filteredAndSortedUser = totalUsers.filter( { $0.active == true } ).sort( {$0.lastName < $1.lastName} )

print(filteredAndSortedUser)
print("count \(filteredAndSortedUser.count)")
/*: Comment not displayed
# Currying
translating the evaluation of a function that takes multiple arguments into evaluating a sequence of functions, each with a single argument.
*/

func add1(x: Int, y: Int) -> Int {
    return x + y
}

/*: 
## Transform regular function to curried
 Transform a function taking multiple arguments into a curried one, by seperating the function into series of funtions that each takes only one argument. Curried version of add1

*/

func add2(x: Int) -> (Int -> Int) {
    
    return { y in return x + y }
}

let sum = add2(2)(3) //
print(sum)

/*:
# Closures
Closures are self-contained blocks of functionality that can be passed around and used in your code. Closures in Swift are similar to blocks in C and Objective-C and to lambdas in other programming languages.”
*/

/*:
## Closure Expression Syntax
   { (parameters) -> return type in 
    statements
    }

reversed = names.sort({ (s1: String, s2: String) -> Bool in
return s1 > s2
})

*/

/*: 
## Inferring type from Context
Swift can infer the types of its parameters and the type of the value it returns from the type of the sort() methods second
    parameter

names.sort ( { s1, s2 in return
s1 > s2} )
*/

/*:
## Shorthand Argument Names
Swift automatically provides shorthand argument names to inline closures, which can be used to refer to the values of the closure’s arguments by the names $0, $1, $2, and so on.

If you use these shorthand argument names within your closure expression, you can omit the closure’s argument list from its definition, and the number and type of the shorthand argument names will be inferred from the expected function type. The in keyword can also be omitted, because the closure expression is made up entirely of its body:

   reversed = names.sort( { $0 > $1 } )
*/

/*:
# Optional
There is a value, and it equals x
or
There isn’t a value at all - nil
*/

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber is inferred to be of type "Int?", or "optional Int”

var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value”

if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}

//: ### Optionals
class UserRepository {
    
    func findUser(user: User) -> User? {
        
        return nil
    }
}

let me = User(id: 1, firstName: "Mark", lastName: "Flowers", active: true)
let myRepo = UserRepository()
let foundUser: User? = myRepo.findUser(me)

//“Once you’re sure that the optional does contain a value, you can access its underlying value by adding an exclamation mark (!) to the end of the optional’s name. The exclamation mark effectively says, “I know that this optional definitely has a value; please use it.” This is known as forced unwrapping of the optional’s value”

if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}



//Pattern Matching





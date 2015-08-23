//: [Pattern Matching](@previous)

//: ![Egg](Egg.gif "Egg animation")

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

[Classes and Structs reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/ClassesAndStructures.html)
*/
struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

struct PointStruct {
    
    var x: Int
    var y: Int
}

var structPoint = PointStruct(x: 1, y: 2)
var sameStructPoint = structPoint
sameStructPoint.x = 3

/*:

### What are the values of structPoint and sameStructPoint after execution.
Will 'x' value be 3 for both structPoint and sameStructPoint. Does the assignment to sameStructPoint modify the original structPoint? This is where the distinction between value types and reference types is important: when assigned to a new variable, such as sameStructPoint, value types are copied. The assignment to sameStructPoint.x does not update the original structPoint, because structs are value types. We could, instead, declare a class for points:
*/

class PointClass {
    
    var x: Int
    var y: Int
    
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

var classPoint = PointClass(x: 1, y: 2)
var sameClassPoint = classPoint
sameClassPoint.x = 3

/*:

### Classes are references
Now the assignment, sameClassPoint.x, modifies both classPoint and sameClassPoint, because classes are reference types. The distinction between value types and reference types is extremely important

*/

//: [Higher Order Functions](@next)

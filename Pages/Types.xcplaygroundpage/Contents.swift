//: [Introduction](@previous)

//: ![Safety](Safe.gif "Type Safety")

/*: 
## Type Safey
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

//Can't re-assign value to pi as it is a constant
//pi = 8.382

//You can reassing value with vars. FP encourages immutability (let over var)
var name = "iPhone OS"
name = "iOS"

/*:

### Tuples

Tuples group multiple values into a single compound value. The values within a tuple can be of any type and do not have to be of the same type as each other.
*/

let http404Error = (404, "Not Found")

/*:
## Type Aliases
Type aliases define an alternative name for an existing type. You define type aliases with the typealias keyword.

Type aliases are useful when you want to refer to an existing type by a name that is contextually more appropriate, such as when working with data of a specific size from an external source

typealias AudioSample = Unit16

[Types Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/TheBasics.html)
*/

//: [Pattern Matching](@next)

//Immutable





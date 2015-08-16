//: [Currying](@previous)

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
[Closures reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Closures.html#//apple_ref/doc/uid/TP40014097-CH11-ID94)
*/

//: [Optionals](@next)

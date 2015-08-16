//: [Higher Oder Functions](@previous)

//: ![Icon for Yellow Curry](myYellowCurry.png "Yellow Curry")

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
[Currying Reference](http://jamesonquave.com/blog/function-currying-in-swift/)
*/

//: [Closures](@next)

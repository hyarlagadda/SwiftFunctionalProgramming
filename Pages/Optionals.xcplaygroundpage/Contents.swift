//: [Closures](@previous)

/*:
# Optional
There is a value, and it equals x
or
There isn’t a value at all - nil
*/

struct User {
    
    let id: Int
    let firstName: String
    let lastName: String
    let active: Bool
}

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

/*:
[Optional reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/OptionalChaining.html)
*/

//: [Next](@next)

//: [Classes and Structures](@previous)

//: ![Board with functions](BlackBoard.png "Black board with functions")

/*:
# Higher Order Function
Functions that take another funtion or functions that returns another function are called Higher Order functions
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


let filteredAndSortedUser = totalUsers.filter( { $0.active == true } ).sort( {$0.lastName < $1.lastName} )

print(filteredAndSortedUser)
print("count \(filteredAndSortedUser.count)")

/*:
[Functions Reference](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Functions.html#//apple_ref/doc/uid/TP40014097-CH10-ID158)
*/


//: [Currying](@next)

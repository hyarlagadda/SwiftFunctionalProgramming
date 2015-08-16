//: [Types](@previous)

//: ![Pattern Match](pup.gif "Scare the user")
//: ![Pattern Match](Scare.gif "Scare the user")

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

/*:
[Pattern Matching reference](https://realm.io/news/swift-enums-pattern-matching-generics/)
*/

//: [Classes and Structures](@next)

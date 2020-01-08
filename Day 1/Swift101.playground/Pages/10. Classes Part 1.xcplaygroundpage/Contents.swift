//: [Previous](@previous)
//: ## Button Example 02: Styles

import Foundation


class Person {

    var firstName: String?
    var lastName: String?
    let birthPlace = "Belgium"

    func fullName() -> String {
        var parts: [String] = []

        if let firstName = self.firstName {
            parts += [firstName]
        }

        if let lastName = self.lastName {
            parts += [lastName]
        }

        return parts.joined(separator: " ")
    }

}

let john = Person()

john.firstName = "John"
john.lastName = "Doe"
//john.birthPlace = "Canada"



//: [Next](@next)

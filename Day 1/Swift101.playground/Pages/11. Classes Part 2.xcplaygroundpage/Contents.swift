//: [Previous](@previous)
//: ## Circle Example

import Foundation

class Person {

    var firstName: String?
    var lastName: String?
    let birthPlace: String

    init() {
        self.birthPlace = ""
    }

    init(birthPlace: String) {
        self.birthPlace = birthPlace
    }

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

let john = Person(birthPlace: "Canada")
let john2 = Person()

john.firstName = "John"
john.lastName = "Doe"






//: [Next](@next)

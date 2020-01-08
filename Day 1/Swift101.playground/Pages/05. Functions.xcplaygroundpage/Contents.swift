//: [Previous](@previous)
//: ## Functions

import Foundation

func greet(with name:String="") {
    print("Hello \(name)")
}

greet()
greet(with: "Craig")

func greeting(with first:String, and last: String) -> String {
    return "Hello \(first) \(last)"
}

let example = greeting(with: "Jason", and: "Smith")

print(example)

//: [Next](@next)

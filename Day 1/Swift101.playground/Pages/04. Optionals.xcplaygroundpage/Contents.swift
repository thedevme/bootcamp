//: [Previous](@previous)
//: ## Optionals

import Foundation


var notAnOptional = "This is not an optional"
var optional:String?

print(notAnOptional)
print(optional)

if let value = optional {
    print("value unwrapped using if let \(value)")
}

optional = "This is an optional"
print(optional)

if let value = optional {
    print("value unwrapped using if let \(value)")
}

print(optional!)


//: [Next](@next)

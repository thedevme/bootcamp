//: [Previous](@previous)
//: ## Arrays

import Foundation


let integers:[Int] = []
let strings = [String]()
let integers2 = [54, 29]
var states:[String] = []


//states.append(23)
states.append("Florida")
states.append(contentsOf: ["California", "New York"])
states.insert("Ohio", at:1)
states.insert(contentsOf:["North Carolina", "South Carolina", "Nevada"], at:3)
states += ["Texas", "Colorado"]
states.count


if states.isEmpty {
    print("There are no items in the array")
}
else {
    //print("There are currently \(states.count) total items in our array")
}

// let's retrieve California:
let state = states[2]

/*
 update to let state = states[3]

 The Results Panel shows North Carolina and not California. Remember, arrays start at 0, not 1.
 Therefore, for us to get California, we would actually need to use the index position of 2.

*/


if let index = states.firstIndex(of: "South Carolina") {
    print("Current index position is \(index)")
}

if let index = states.firstIndex(of: "South Carolina") {
    states[index] = "Arizona"
}

for state in states {
    print(state)
}

states.removeFirst()
states.remove(at:2)
states.remove(at:4)
states.removeAll()

for state in states {
    print(state)
}

//: [Next](@next)

//: [Previous](@previous)
//: ## Arrays

import Foundation

let dictFirstExample = Dictionary<String, String>()
let dictSecondExample = [String: Int]()

var dictThirdExample = Dictionary<String, Double>(dictionaryLiteral: ("veggie", 14.99), ("meat", 16.99))
var dictPizzas = ["veggie": 14.99]
dictPizzas["meat"] = 17.99
dictPizzas["meat"] = 16.99

if let oldValue = dictPizzas.updateValue(15.99, forKey: "meat") {
    print("old value \(oldValue)")
}

dictPizzas["specialty"] = 18.99
dictPizzas["chicken"] = 16.99

if let numChickenPrice = dictPizzas["chicken"] {
    print(numChickenPrice)
}

for value in dictPizzas.values {
    print(value)
}

for value in dictPizzas.keys {
    print(value)
}

for (key, value) in dictPizzas {
    print("\(key): \(value)")
}

print("There are \(dictPizzas.count) total pizzas.")

dictPizzas.removeValue(forKey: "chicken")
dictPizzas["meat"] = nil

if dictPizzas.isEmpty {
    print("there are no pizzas")
}
else {
    print("There are \(dictPizzas.count) total pizzas.")
}


//: [Next](@next)

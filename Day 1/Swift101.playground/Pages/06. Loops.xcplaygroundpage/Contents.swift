//: [Previous](@previous)
//: ## Loops

import Foundation

let range = 10...20
for value in range {
    print("closed range - \(value)")
}

let halfClosedRange = 10..<20

for index in halfClosedRange {
    print("half closed range - \(index)")
}

for index in (10...20).reversed() {
    print("reversed range - \(index)")
}

var y = 0

while y < 50 {
    y += 5
    print("y:\(y)")
}

while y < 50 {
    y += 5
    print("y:\(y)")
}

var x = 0

repeat {
    x += 5
    print("x: \(x)")
} while x < 100

repeat {
    x += 5
    print("x: \(x)")
} while x < 100


//: [Next](@next)

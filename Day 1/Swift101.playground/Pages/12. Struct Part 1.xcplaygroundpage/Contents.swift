//: [Previous](@previous)
//: ## Rectangle Example

import Foundation

struct Wallet {
    var dollars: Int
    var cents: Int
}

// Differences between Classes and Structs
// 1. Classes support inheritance
// 2. Copying and Referencing


// 1. Classes support inheritance
class Person {
    var firstName: String?
    var lastName: String?
    let birthPlace: String

    init(birthPlace: String) {
        self.birthPlace = birthPlace
    }
}

class Student: Person {
    var school: String?
}

let student = Student(birthPlace: "France")

// Person class is the parent or superclass of the Student class
// This means that the Student class inherits the properties and behavior of the Person class

// 2. Copying and Referencing

struct Point {
    var x: Int
    var y: Int

    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

var point1 = Point(x: 0, y: 0)
var point2 = point1

point1.x = 10

print(point1.x) // 10
print(point2.x) // 0

/*

We define a structure, Point, to encapsulate the data to store a coordinate in a two-dimensional
space. We instantiate point1 with x equal to 0 and y equal to 0. We assign point1 to point2 and
set the x coordinate of point1 to 10. If we output the x coordinate of both points, we discover
that they are not equal.

Structures are passed by value, while classes are passed by reference. If you plan to continue
working with Swift, you need to understand the previous statement. When we assigned point1 to
point2, Swift created a copy of point1 and assigned it to point2. In other words, point1 and
point2 each point to a different instance of the Point structure.

Let's now repeat this exercise with the Person class. In the following example, we instantiate a
Person instance, set its properties, assign person1 to person2, and update the firstName property
of person1. To see what passing by reference means for classes, we output the value of the
firstName property of both Person instances.

 */




var person1 = Person(birthPlace: "Belgium")
person1.firstName = "Jane"
person1.lastName = "Doe"

var person2 = person1
person1.firstName = "Janine"

print(person1.firstName!)
print(person2.firstName!)


/*

The example proves that classes are reference types. This means that person1 and person2 refer to
or reference the same Person instance. By assigning person1 to person2, Swift doesn't create a
copy of person1. The person2 variable points to the same Person instance person1 is pointing to.
Changing the firstName property of person1 also affects the firstName property of person2, because
they are referencing the same Person instance.

*/


//: [Next](@next)

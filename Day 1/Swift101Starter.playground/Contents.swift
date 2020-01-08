import UIKit

//var age = 40
//var fullName = "Craig Clayton"
//
//print(age)
//dump(fullName)
//
//let gradeAvg = 2.9
//fullName = "Merlin"
//
//let version: Float = 1.1
//let version2: Double = 1.23
//
//let lessPrecisePI = Float("3.14")
//
//// let morePrecisePI = Double("3.14159265536")
//// 2nd line
//// 3rd line
//
///*
// This is a multline comment and I can keep typing just to annoy the developer who reads this comment and wonders why its here.
//*/
//
//

//
//let name = "\(firstName) \(lastName) is \(age)!"
//
//let sum = 23 + 20
//let result = sum - 34
//let total = result * 5
//let divide = total / 10
//let divide2 = Float(total) / 10
//let numMod = 7 % 3
//
//var count = 0
//
//count = count + 1
//count = count - 1
//
//count += 5
//count -= 5
//
//let firstValue = 1
//let secondValue = 2
//
//firstValue > secondValue
//firstValue < secondValue
//firstValue >= secondValue
//firstValue <= secondValue
//firstValue == secondValue
//firstValue != secondValue



//let isPictureVisible = false
//let isRestaurantFound = false
//let age = 19
//
//if isPictureVisible {
//    print("pic is visible")
//}
//
//if !isRestaurantFound {
//    print("restuarant was not found")
//}
//
//if isRestaurantFound == false {
//    print("restuarant was not found")
//}
//
//if age < 21 {
//    print("Since we cannot offer you an adult bev - would you like a water or soda to drink.")
//} else {
//    print("What type of bev would you like?")
//}
//
//let restaurantName = "La Bamba"
//
//if restaurantName == "La Bamba" {
//    print("Ive only been to La Bamba II")
//} else if restaurantName == "La Bamba II" {
//    print("This restaurant is excellent")
//} else {
//    print("Oh! Ive never heard of that restaurant!")
//}
//
//switch restaurantName {
//
//case "La Bamba":
//    print("Ive only been to La Bamba II")
//case "La Bamba II":
//    print("This restaurant is excellent")
//case "La Bamba III":
//        print("Ive only been to La Bamba II")
//case "La Bamba VI":
//        print("This restaurant is excellent")
//default:
//    print("Oh! Ive never heard of that restaurant!")
//}
//
//
//var notAnOptional = "This is not an optional"
//var optional: String?
//
//optional = "This is an optional"
//
//print(notAnOptional)
//print(optional)
//
//if let value = optional {
//    print(value)
//}
//
//print(optional!)
//
//
//
//func greet() {
//    print("Hello Qiana!!")
//}
//
//greet()
//
//let firstName = "Merlin"
//let lastName = "The Great"
//
//func fullName() -> String {
//    "\(firstName) \(lastName)"
//}
//
//func fullName(first: String, last: String) -> String {
//    "\(first) \(last)"
//}
//
//fullName()
//fullName(first: "Craig", last: "Clayton")
//let value = fullName(first: "Jennifer", last: "Smith")
//print(value)
//
//let range = 10...20
//
//for value in range {
//    print("closed range - \(value)")
//}
//
//let halfClosedRange = 10..<20
//
//for value in halfClosedRange {
//    print("half closed range: \(value)")
//}
//
//for value in range.reversed() {
//    print("closed range reverse: \(value)")
//}
//
//var y = 0
//
//while y < 50 {
//    y += 5
//    print("y:\(y)")
//}
//
//var x = 0
//
//repeat {
//    x += 5
//    print("x: \(x)")
//} while x < 100


//let integers:[Int] = []
//let strings = [String]()
//
//let integers2 = [54, 29]
//
//var states:[String] = []
//states.append("Florida")
//states.append(contentsOf: ["California", "New York"])
//states.insert("Ohio", at: 1)
//states.insert(contentsOf: ["North Carolina", "South Carolina", "South Carolina", "Nevada"], at: 3)
//
//states += ["Texas", "Colorado"]
//
//if states.isEmpty {
//    print("there are no states")
//} else {
////    print("there are \(states.count) total states!!")
//}
//
//let state = states[2]
//
////print(states)
//
//if let index = states.firstIndex(of: "South Carolina") {
//    states[index] = "Arizona"
//}
//
////print(states)
//
//
//
//states.removeFirst()
//states.removeLast()
////states.remove(at: 2)
//
//if let index = states.firstIndex(of: "Maine") {
//    states.remove(at: index)
//}
//
//states.removeAll()
//
//
//for state in states {
//    print(state)
//}

//let dictFirstExample = Dictionary<String, String>()
//let dictSecondExample = [String: Int]()
//
//var dictPizzas = ["veggie" : 14.99]
//dictPizzas["meat"] = 17.99
//dictPizzas["meat"] = 16.99
//
//if let oldValue = dictPizzas.updateValue(15.99, forKey: "meat") {
//    print("old value \(oldValue)")
//}
//
//
//dictPizzas["specialty"] = 18.99
//dictPizzas["chicken"] = 16.99
//
//
//print(dictPizzas)
//
//if let chickenPrice = dictPizzas["hambuger"] {
//    print(chickenPrice)
//}
//
//for value in dictPizzas.values {
//    print(value)
//}
//
//for key in dictPizzas.keys {
//    print(key)
//}
//
//for (key, value) in dictPizzas {
//    print("key: \(key) value: \(value)")
//}
//
//print("There are \(dictPizzas.count) total pizzas!!")
//
//dictPizzas.removeValue(forKey: "chicken")
//dictPizzas["meat"] = nil
//dictPizzas.removeAll()
//
//
//if dictPizzas.isEmpty {
//    print("there are no pizzas")
//} else {
//    print("There are \(dictPizzas.count) total pizzas!!")
//}


let movieSet = Set<String>()
let numberSet = Set<Int>([])

var craigsFavMovieSet = Set<String>([])
var gabesFavMovieSet = Set<String>(["Fight Club", "Matrix", "Evil Dead", "Big Trouble in Little China", "Aliens", "Winter Solider", "The Illusionist", "Predator", "Matrix"])

gabesFavMovieSet.insert("Terminator")
//gabesFavMovieSet

craigsFavMovieSet = ["The Pianist", "The Shawshank Redemption", "Dark Knight", "Black Swan", "Ip Man", "The Illusionist", "The Silence of the Lambs", "Winter Solider", "Green Mile", "Se7en"]

if craigsFavMovieSet.contains("Green Mile") {
    print("Green Mile found")
}

for movie in gabesFavMovieSet {
    print("Gabes movies: \(movie)")
}


for movie in craigsFavMovieSet {
//    print("Craig movies: \(movie)")
}

craigsFavMovieSet.intersection(gabesFavMovieSet)
craigsFavMovieSet.union(gabesFavMovieSet)
craigsFavMovieSet.remove("Winter Solider")
craigsFavMovieSet.intersection(gabesFavMovieSet)
craigsFavMovieSet.removeAll()
gabesFavMovieSet = []

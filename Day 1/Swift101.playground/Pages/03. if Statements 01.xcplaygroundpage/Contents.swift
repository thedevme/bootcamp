//: [Previous](@previous)
//: ## if Statements

import Foundation

let isPictureVisible = false
let isRestaurantFound = false
let drinkingAgeLimit = 19

if isPictureVisible {
    print("Picture is visible")
}

if !isRestaurantFound {
    print("Restaurant was not found")
}

if drinkingAgeLimit < 21 {
    print("Since we cannot offer you an adult beverage - would you like a water or soda to drink?")
}
else {
    print("What type of beverage would you like?  We have adult beverages along with water or soda to drink.")
}

let restaurantName = "La Bamba"

if restaurantName == "La Bamba" {
    print("I've only been to La Bamba II!")
}
else if restaurantName == "La Bamba II" {
    print("This restaurant is excellent!")
}
else {
    print("Oh! I've never heard of that restaurant")
}



//: [Next](@next)

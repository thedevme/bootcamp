//: [Previous](@previous)
//: ## Arrays

import Foundation

let movieSet = Set<String>()
let numberSet = Set<Int>([])

var craigsFavMovieSet = Set<String>([])
var gabesFavMovieSet = Set<String>(["Fight Club", "Matrix", "Evil Dead", "Big Trouble in Little China", "Aliens", "Winter Solider", "The Illusionist", "Predator"])
gabesFavMovieSet.insert("Terminator")
gabesFavMovieSet

craigsFavMovieSet = ["The Pianist", "The Shawshank Redemption", "Dark Knight", "Black Swan", "Ip Man", "The Illusionist", "The Silence of the Lambs", "Winter Solider", "Green Mile", "Se7en"]

if craigsFavMovieSet.contains("Green Mile") {
    print("Green Mile found")
}

for movie in gabesFavMovieSet {
    print("Gabe's movie - \(movie)")
}

for movie in craigsFavMovieSet.sorted() {
    print("Craig's movie - \(movie)")
}

craigsFavMovieSet.intersection(gabesFavMovieSet)
craigsFavMovieSet.union(gabesFavMovieSet)
craigsFavMovieSet.remove("Winter Solider")
craigsFavMovieSet.intersection(gabesFavMovieSet)
craigsFavMovieSet.removeAll()
gabesFavMovieSet = []

//: [Next](@next)

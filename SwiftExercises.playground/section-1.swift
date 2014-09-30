import UIKit

/*

Strings

*/


var str = "Hello";

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    
    return "My favorite cheese is \(cheese)."
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
// Make fullSentence say "My favorite cheese is cheddar."

/*

Arrays & Dictionaries

*/

let numberArray = [1, 2, 3, 4]
// Add 5 to this array
var five = [5]
five = numberArray + five


let numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary

var copyDictionary = numberDictionary
copyDictionary[5] = "five"
copyDictionary
/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively


for num in 1...10 {
    println("lets count \(num)")

}



// Use a half-closed range loop to print 1 - 10, inclusively

for num in 1..<11 {
    println("lets count \(num)")
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    
    var container : Array<String> = [String]()
    
    for character in characters {
        for (info, value) in character {
            if info == "favorite drink" {
                container.append(value)
            }
        }
    }
    
    return container;
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

// WORK HERE - make your function and pass `strings` in

func arrayToStrings() -> String{
    var semicolon = ";"
    var result : String = String()
    var formedString : String
    
    for string in strings {
        result = string + semicolon + result
    }
    
    formedString = result
    
    return formedString
}



let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
// WORK HERE

var sortedCereal = sorted(cerealArray, { (s1: String, s2: String) -> Bool in return s1 < s2})

sortedCereal

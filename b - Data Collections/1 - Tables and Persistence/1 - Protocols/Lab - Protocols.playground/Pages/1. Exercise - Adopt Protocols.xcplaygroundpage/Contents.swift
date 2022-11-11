/*:
## Exercise - Adopt Protocols: CustomStringConvertible, Equatable, and Comparable
 
 Create a `Human` class with two properties: `name` of type `String`, and `age` of type `Int`. You'll need to create a memberwise initializer for the class. Initialize two `Human` instances.
 */

import Foundation
class Human: CustomStringConvertible, Equatable, Comparable, Codable {
        
    var description: String {
        return "Human(name: \"\(name)\", age: \(age))"
    }
    
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    static func == (lhs: Human, rhs: Human) -> Bool {
        return lhs.name == rhs.name && lhs.age == rhs.age
    }
    
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
}

let person1 = Human(name: "Andrew", age: 22)
let person2 = Human(name: "David", age: 29)
//:  Make the `Human` class adopt the `CustomStringConvertible` protocol. Print both of your previously initialized `Human` objects.
print(person1)
print(person2)
//:  Make the `Human` class adopt the `Equatable` protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to eachother (using `==`). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to eachother (using `!=`).
print("== : \(person1 == person2)")
print("!= : \(person1 != person2)")
//:  Make the `Human` class adopt the `Comparable` protocol. Sorting should be based on age. Create another three instances of a `Human`, then create an array called `people` of type `[Human]` with all of the `Human` objects that you have initialized. Create a new array called `sortedPeople` of type `[Human]` that is the `people` array sorted by age.
let kid = Human(name: "Kid", age: 5)
let juvenile = Human(name: "Juvenile", age: 14)
let adult = Human(name: "Adult", age: 38)
var people: [Human] = [kid, juvenile, adult]
let sortedPeople = people.sorted()
print("sortedPeople: \(sortedPeople)")
//:  Make the `Human` class adopt the `Codable` protocol. Create a `JSONEncoder` and use it to encode as data one of the `Human` objects you have initialized. Then use that `Data` object to initialize a `String` representing the data that is stored, and print it to the console.
var jsonEncoder = JSONEncoder()
if let kidData = try? jsonEncoder.encode(kid), let stringKidData = String(data: kidData, encoding: .utf8) {
    print(kidData)
    print(stringKidData)
}
/*:
page 1 of 5  |  [Next: App Exercise - Printable Workouts](@next)
 */

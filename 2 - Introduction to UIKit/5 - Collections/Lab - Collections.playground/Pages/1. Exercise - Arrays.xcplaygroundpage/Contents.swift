/*:
## Exercise - Arrays
 
 Assume you are an event coordinator for a community charity event and are keeping a list of who has registered. Create a variable `registrationList` that will hold strings. It should be empty after initialization.
 */
var registertionList: [String] = []
//:  Your friend Jasmine is the first to register for the event. Add her name to `registrationList` using the `append(_:)` method. Print the contents of the collection.
registertionList.append("Jasmine")
print(registertionList)

//:  Add four additional names into the array using the `+=` operator. All of the names should be added in one step. Print the contents of the collection.
registertionList += ["Alice", "Bob", "Charlie", "Diana"]
print(registertionList)

//:  Use the `insert(_:at:)` method to add `Trey` into the array as the second element. Print the contents of the collection.
registertionList.insert("Trey", at: 1)
print(registertionList)

//:  Somebody had a conflict and decided to transfer registration to someone else. Use array subscripting to change the sixth element to `Elton`. Print the contents of the collection.
registertionList[5] = "Elton"
print(registertionList)

//:  Call `removeLast()` on `registrationList`. If done correctly, this should remove `Elton` from the collection. Store the result of `removeLast()` into a new constant `deletedItem`, then print `deletedItem`.
let deletedItem = registertionList.removeLast()
print(deletedItem)

/*:
page 1 of 4  |  [Next: App Exercise - Activity Challenge](@next)
 */

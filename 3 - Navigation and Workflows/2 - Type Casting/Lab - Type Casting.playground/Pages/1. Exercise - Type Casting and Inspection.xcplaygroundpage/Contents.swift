/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var collection: [Any] = [1.1,2.2,9.9,1,2,3,4,"T","A","N",true,false]

if let content = collection[0] as? Double{
    print(content)
}

//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for i in 0...11{
    if let content = collection[i] as? Int{
        print("The integer has a value of \(i) is \(content)")
    }
    if let content = collection[i] as? String{
        print("The String has a value of \(i) is \(content)")
    }
    if let content = collection[i] as? Double{
        print("The Double has a value of \(i) is \(content)")
    }
    if let content = collection[i] as? Bool{
        print("The bool has a value of \(i) is \(content)")
    }
}

//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var dict: [String : Any] = ["a":1, "b": 9.9, "c":"c", "d":false]

for (key, value) in dict {
    if let intValue = value as? Int{
        print("the value of \(key) is \(intValue)")
    }
    if let doubleValue = value as? Double{
        print("the value of \(key) is \(doubleValue)")
    }
    if let stringValue = value as? String{
        print("the value of \(key) is \(stringValue)")
    }
    if let boolValue = value as? Bool{
        print("the value of \(key) is \(boolValue)")
    }
}

//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0
for (key, value) in dict {
    if let intValue = value as? Int{
        total += Double(intValue)
    }
    if let doubleValue = value as? Double{
        total += Double(doubleValue)
    }
    if let stringValue = value as? String{
        total += 1
    }
    if let boolValue = value as? Bool{
        if boolValue == true {
            total += 2
        } else {
            total -= 3
        }
    }
}
print(total)

//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0
for (key, value) in dict {
    if let intValue = value as? Int{
        total += Double(intValue)
    }
    if let doubleValue = value as? Double{
        total += Double(doubleValue)
    }
    if let stringValue = value as? String{
        if let value = Double(stringValue){
            total += value
        }
    }
}
print(total)
/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */

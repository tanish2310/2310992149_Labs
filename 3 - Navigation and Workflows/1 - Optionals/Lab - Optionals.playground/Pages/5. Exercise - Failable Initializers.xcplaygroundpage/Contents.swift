/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer {
    var ram: Int
    var yearManufactured: Int
    
    init?(rAm: Int, year: Int){
        if rAm > 0 && (year > 1970 && year < 2020) {
            self.ram = rAm
            self.yearManufactured = year
        } else {
            return nil
        }
    }
}

//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
var comp1: Computer? = Computer(rAm: 0, year: 2022)
var comp2: Computer? = Computer(rAm: 4, year: 2019)

if let com1 = comp1{
    print("\(com1.ram), \(com1.yearManufactured)")
} else {
    print("Invalid")
}

if let com2 = comp2{
    print("\(com2.ram), \(com2.yearManufactured)")
} else {
    print("Invalid")
}

/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */

import Foundation

//MARK: - Stored Propeties
let pizzaInIncehs : Int = 10
var numberOfSlices : Int = 6
print(numberOfSlices)
// this section we have 2 property and we store and acces these

//MARK: - Computed Properties
let pizzaInIncehs2 : Int = 14
var numberOfSlices2 : Int {
    return pizzaInIncehs2-4
}
// computed properties must be a "var"
// type of computed property must be known
print(numberOfSlices2)
// actually numberOfSlices2's curly brackets is getter method

//MARK: - Getter
let pizzaInInches3 : Int = 16
var numberOfSlices3 : Int {
    get {
        return pizzaInInches3 - 4
    }
}

//MARK: - Setter
let pizzaInInches4 : Int = 16
var numberOfSlices4 : Int {
    get {
        return pizzaInInches4 - 4
    }
    set{
        print("numberOfSlices4 now has a new value which is \(newValue)")
    }
}
numberOfSlices4 = 17

//MARK: - Example - 1

let pizzaInInches5 : Int = 12
var numberOfPeople5 : Int = 6
let slicesPerPerson5 : Int = 5
var numberOfSlices5 : Int {
    get {
        return pizzaInInches5 - 4
    }
}
var numberOfPizza5 : Int {
    get {
        let numberOfPeopleFedPerPizza5 = numberOfSlices5 / slicesPerPerson5
        return numberOfPeople5 / numberOfPeopleFedPerPizza5
    }

}
print(numberOfPizza5)

//MARK: - Example - 2

let pizzaInInches6 : Int = 16
var numberOfPeople6 : Int = 12
let slicesPerPerson6 : Int = 4
var numberOfSlices6 : Int {
    get {
        return pizzaInInches6 - 4
    }
}
var numberOfPizza6 : Int {
    get {
        let numberOfPeopleFedPerPizza6 = numberOfSlices6 / slicesPerPerson6
        return numberOfPeople6 / numberOfPeopleFedPerPizza6
    }
    set {
        let totalSlices6 = numberOfSlices6 * newValue
        numberOfPeople6 = totalSlices6 / slicesPerPerson6
    }
}
numberOfPizza6 = 4
print(numberOfPeople6)

//MARK: - Observable Properties
// first will set run then didset
var pizzaInInches7 : Int = 16 { // observable properties must be "var" not "let"
    didSet {
//        print("pizzaInInches7 's old value is \(oldValue)")
        if pizzaInInches7 >= 18 {
            print("invalid size specified , pizzaInInches7 set to 18")
            pizzaInInches7 = 18
        }
    }

    willSet {
//        print("pizzaInInches7 's new value is \(newValue)")
        
    }
}
var numberOfPeople7 : Int = 12
let slicesPerPerson7 : Int = 4
var numberOfSlices7 : Int {
    get {
        return pizzaInInches7 - 4
    }
}
var numberOfPizza7 : Int {
    get {
        let numberOfPeopleFedPerPizza7 = numberOfSlices7 / slicesPerPerson7
        return numberOfPeople7 / numberOfPeopleFedPerPizza7
    }
    set {
        let totalSlices7 = numberOfSlices7 * newValue
        numberOfPeople7 = totalSlices7 / slicesPerPerson7
    }
}
pizzaInInches7 = 19
print(pizzaInInches7)


import UIKit

class Car {
    var color = "red"
    
    static let singletonCar = Car()
}

let myCar = Car.singletonCar
myCar.color = "Blue"

let yourCar = Car.singletonCar
print(yourCar.color) // print blue because yourCar point the singletonCar

class A {
    init (){
        Car.singletonCar.color = "Brown"
    }
}
class B {
    init() {
        print(Car.singletonCar.color)
    }
}
let a = A()
let b = B()
//class Car {
//    var color = "red"
//}
//
//var myCar = Car()
//myCar.color = "blue"
//
//var yourCar = Car()
//print(yourCar.color) // red because myCar and yourCar is different object


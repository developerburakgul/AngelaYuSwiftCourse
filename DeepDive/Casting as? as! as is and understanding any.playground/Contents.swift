import Foundation

class Animal {
    var name : String
    init(n : String) {
        self.name = n
        
    }
}

class Human : Animal {
    func code()  {
        print("Typing away ...")
    }
}

class Fish: Animal {
    func breatheUnderWater() {
        print("Breathing under water.")
    }
}

let burak = Human(n: "Burak")
let batuhan = Human(n: "Batuhan")
let nemo = Fish(n: "Nemo")

let neighbours : [AnyObject] = [burak,batuhan,nemo]

//func findNemo(from animals : [Animal])  {
//    for animal in animals {
//        if animal is Fish {
//            print(animal.name)
//            let fish = animal as! Fish
//            fish.breatheUnderWater()
//        }
//    }
//}
//
//findNemo(from: neighbours)
//
//if let fish = neighbours[1] as? Fish {
//    print("Casting has succesed")
//}else {
//    print("Casting has not succesed")
//}

//if neighbours[2] is Animal {
//    print("neighbours[2] is animal")
//}else {
//    print("neighbours[2] is not animal")
//}

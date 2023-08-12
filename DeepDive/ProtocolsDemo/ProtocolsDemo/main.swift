
protocol CanFly {
    func fly()
}

extension CanFly {
    // if any struct or class dont have CanFly protocol , as default this fly function runs
    func fly()  {
        print("The object takes off into the air")
    }
}




class Bird {
    
    var isFemale = true
    
    func layEgg()  {
        if isFemale {
            print("The bird makes a new bird in a shell")
        }
    }
   
    
}

class Eagle: Bird , CanFly {
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
        
    }
    
    
    func soar()  {
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water ")
    }
}


struct FlyingMuseum  {
    
    
    func flyingDemo(flyingObject : CanFly) {
        print(flyingObject.fly())
    }
}

struct Airplane : CanFly {
//    func fly() {
//        print("The air plane uses its engine to lift off into the air")
//    }
//
    
}

//var eagle = Eagle()
//var penguin = Penguin()
//var plane = Airplane()
//
//
//let museum = FlyingMuseum()
//museum.flyingDemo(flyingObject: plane)
var myPlane = Airplane()
myPlane.fly()
var eagle = Eagle()
eagle.fly()

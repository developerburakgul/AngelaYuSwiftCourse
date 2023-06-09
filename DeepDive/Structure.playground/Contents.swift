//struct Town {
//    let name = "Angeland"
//    var citizens = ["Angela","Jack Bauer"]
//    var resources = ["Grain" : 100, "Ore" : 42,"Wool":75]
//
//    func fortify()  {
//        print("Defences increased ! ")
//    }
//}
//
//var myTown = Town()
//
//print(myTown.citizens)
//print("\(myTown.name) has \(myTown.resources["Grain"]!) bags of grain. ")
//
//myTown.citizens.append("Keanu Reeves")
//print(myTown.citizens.count)
//myTown.fortify()


struct Town {
    let name : String
    var citizens : [String]
    var resources : [String:Int]
    
    init(name : String , citizens : [String],resources : [String:Int]) {
        
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    

    func fortify()  {
        print("Defences increased ! ")
    }
}

var anotherTown = Town(name: "Namless Island", citizens: ["Tom Hanks"], resources: ["Coconuts" : 100])
var ghostTown = Town(name: "Ghosty McGhostFace", citizens: [], resources: ["Tumbleweed":100])

anotherTown.citizens.append("Wilson")
ghostTown.fortify()

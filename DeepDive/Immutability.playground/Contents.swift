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
    
    mutating func harvestRice()  {
        resources["Rice"]=100
    }
}

var myTown = Town(name: "Angela Island", citizens: ["Angela","Jack Bauer"], resources: ["Wool" : 100])
myTown.citizens.append("Keanu Reeves")

print("People of \(myTown.name) : \(myTown.citizens)")

myTown.harvestRice()
print(myTown.resources)

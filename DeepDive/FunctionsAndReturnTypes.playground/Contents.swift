func greeting1()  {
    print("Hello")
}

func greeting2(name :String)  {
    print("Hello \(name) ")
}

func greeting3(name : String) -> Bool {
    if name == "Angela" || name == "Jack Bauer" {
        return true
    }else {
        return false
    }
}

var shouldDoorOpen =  greeting3(name: "Angela")

print(shouldDoorOpen)

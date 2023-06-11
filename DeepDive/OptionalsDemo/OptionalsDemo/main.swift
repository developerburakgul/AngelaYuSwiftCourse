//
//  main.swift
//  OptionalsDemo
//
//  Created by Burak Gül on 11.06.2023.
//

//let myoptional : String?
//
//myoptional = nil

// 1. force unwrapping
// myoptional = nil  // ise çöker
//let text = myoptional!


// 2. check for nil value
// bunun pek tercih edilmemesinin sebebi ise if bloğuna girinde myoptional kullandığın her yerde ! kullanman gerekiyor
//if myoptional != nil {
//    let text = myoptional!
//    print(text)
//}

// 3. optional binding

//if let safeoptional = myoptional {
//    let text = safeoptional
//    print(text)
//}

// 4 nil coalescing operator
// myoptional değeri varsa o koyulur texte yoksa "Batuhan" koyulur text içine "Batuhan" yazan yer default value dur
//let text : String = myoptional ?? "Batuhan"
//print(text)


// 5 optional chaining
struct MyOptional {
    var property = 123
    
    func method()  {
        print("I am the struct's method")
    }
}

let myoptional : MyOptional?

myoptional = MyOptional()

print(myoptional?.property) // myoptional nil değilse sağ tarafa doğru ilerle ve property özelliğine eriş eğer nil ise dur

let deneme = myoptional?.property // myoptional?.property ise bir optional olur 
print(deneme!)

myoptional?.method() // myoptional nil değilse sağ tarafa doğru ilerle ve method u çağır eğer nil ise dur









import Foundation

let touple1 = ("Burak",23)
print(touple1.0)

let touple2 = (name:"Burak",age:23)
print(touple2.age)

let touple3 : (name:String,age:Int)
touple3.name = "Batuhan"
touple3.age = 20

let touple4 : (name:String,age:Int)
touple4 = (name: "hüseyin",age:50)
print("\(touple4.name) is \(touple4.age) years old")

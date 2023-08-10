import UIKit
// Note : every episode is same

let array = [6,2,3,9,4,1]

func addOne(n1:Int) -> Int {
    return n1+1
}

//array.map(addOne)

//array.map({ (n1:Int) -> Int in
//    return n1+1
//})

//array.map({ (n1)  in return n1+1 })
//array.map({ (n1)  in n1+1 })
//array.map({ (n1)  in n1+1 })
//array.map({ $0+1})
//array.map(){ $0+1}
//array.map{ $0+1}

// episode 6
//
//func calculator(n1 : Int ,n2 : Int , operation : (Int,Int)-> Int) -> Int {
//    return operation(n1,n2)
//}
//
//func add(n1:Int,n2:Int) -> Int {
//    return n1+n2
//}
//
//
//
//calculator(n1: 2, n2: 3){ $0 * $1 }


// episode 5
//
//func calculator(n1 : Int ,n2 : Int , operation : (Int,Int)-> Int) -> Int {
//    return operation(n1,n2)
//}
//
//func add(n1:Int,n2:Int) -> Int {
//    return n1+n2
//}
//
//
//
//calculator(n1: 2, n2: 3, operation: { $0 * $1 })


// episode 4

//func calculator(n1 : Int ,n2 : Int , operation : (Int,Int)-> Int) -> Int {
//    return operation(n1,n2)
//}
//
//func add(n1:Int,n2:Int) -> Int {
//    return n1+n2
//}
//
//
//
//calculator(n1: 2, n2: 3, operation: { $0 * $1 })
// anonime parameter name


// episode 3

//func calculator(n1 : Int ,n2 : Int , operation : (Int,Int)-> Int) -> Int {
//    return operation(n1,n2)
//}
//
//func add(n1:Int,n2:Int) -> Int {
//    return n1+n2
//}
//
//
//
//calculator(n1: 2, n2: 3, operation: { (n1,n2) in n1*n2 })


// episode 2

//func calculator(n1 : Int ,n2 : Int , operation : (Int,Int)-> Int) -> Int {
//    return operation(n1,n2)
//}
//
//func add(n1:Int,n2:Int) -> Int {
//    return n1+n2
//}
//
//
//
//calculator(n1: 2, n2: 3, operation: { (n1:Int,n2:Int) -> Int in
//    return n1*n2
//})


// episode 1

//func calculator(n1 : Int ,n2 : Int , operation : (Int,Int)-> Int) -> Int {
//    return operation(n1,n2)
//}
//
//func add(n1:Int,n2:Int) -> Int {
//    return n1+n2
//}
//
//func multiply(n1:Int,n2:Int) -> Int {
//    return n1*n2
//}
//
//calculator(n1: 2, n2: 3, operation: add)

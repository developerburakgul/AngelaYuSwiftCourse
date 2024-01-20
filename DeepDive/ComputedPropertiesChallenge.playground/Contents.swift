import Foundation

//MARK: - Question - 1
var width : Float = 2.3
var height : Float = 1.5
var areaCoveredPerBucket : Float = 1.5
// We want to calculate how many buckets we need to paint the wall
// 1 bucket of paint for 1.5sqm
var bucketsOfPaint : Int {
    let area = width*height
    let numberOfBuckets = area/areaCoveredPerBucket
    let roundedBuckets = ceilf(numberOfBuckets)
    return Int(roundedBuckets)
}
print(bucketsOfPaint)


//MARK: - Question - 2
// When I say how many buckets there are, I mean how many square meters of walls we can paint.

var width2 : Float = 2.3
var height2 : Float = 1.5
var areaCoveredPerBucket2 : Float = 1.5
// We want to calculate how many buckets we need to paint the wall
// 1 bucket of paint for 1.5sqm
var bucketsOfPaint2 : Int {
    get{
        let area2 = width2*height2
        let numberOfBuckets2 = area2/areaCoveredPerBucket2
        let roundedBuckets2 = ceilf(numberOfBuckets2)
        return Int(roundedBuckets2)
    }
    set{
        let sumArea = Float(newValue) * areaCoveredPerBucket2
        print("\(newValue) amount of paint can paint \(sumArea) square meters of wall ")
        
    }
}
bucketsOfPaint2 = 10


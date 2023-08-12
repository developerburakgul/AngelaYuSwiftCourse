import UIKit

extension UIButton {
    func makeCircular() {
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2
    }
}

var button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
button.backgroundColor = .red
button.makeCircular()

//extension Double {
//    func round(to places : Double) -> Double {
//        let precisionNumber = pow(10.0, Double(places))
//        var n = self
//        n = n * precisionNumber
//        n.round()
//        n = n / precisionNumber
//        return n
//    }
//}
//
//var pi = 3.14159
//pi.round(to: 2)

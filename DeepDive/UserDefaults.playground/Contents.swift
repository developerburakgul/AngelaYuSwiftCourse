import UIKit
// USERDEFAULTS İT İS NOT A DATABASE , SO YOU CAN SAVE LİTTLE DATA TO DEFAULTS.PLİST
// DONT USE İT AS DATABASE
let defaults = UserDefaults.standard
let dictionaryKey = "myDictionary" // you should constant for string

defaults.set(0.24, forKey: "Volume")
let volume = defaults.float(forKey: "Volume")

defaults.set(true, forKey: "MusicOn")
let isMuiscOn = defaults.bool(forKey: "MusicOn")

defaults.set("burak", forKey: "PlayerName")
let name = defaults.string(forKey: "PlayerName")

defaults.set(Date(), forKey: "AppLastOpenedByUser")
let appLastOpen = defaults.object(forKey: "AppLastOpenedByUser")

let array = [1,2,3]
defaults.set(array, forKey: "myArray")
let myArray = defaults.array(forKey: "myArray")


let dict = ["burak":"name"]
defaults.set(dict, forKey: dictionaryKey)
let dictionary = defaults.dictionary(forKey: dictionaryKey)


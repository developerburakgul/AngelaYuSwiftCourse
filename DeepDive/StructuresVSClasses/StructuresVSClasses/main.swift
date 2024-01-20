//
//  main.swift
//  StructuresVSClasses
//
//  Created by Burak Gül on 20.01.2024.
//

import Foundation


//MARK: - Class Example 1

//var hero = ClassHero(name: "Iron Man", universe: "Marvel")
//var anotherMarvel = hero // reference like in c pointer
//anotherMarvel.name = "Hulk"
//print("hero name is \(hero.name)")
//print("anotherhero name is \(anotherMarvel.name)")

//MARK: - Structure Example 1
//var hero2 = StructureHero(name: "Iron Man", universe: "Marvel")
//var anotherMarvel2 = hero2 // value type
//anotherMarvel2.name = "Hulk"
//print("hero2 name is \(hero2.name)")
//print("anotherhero2 name is \(anotherMarvel2.name)")

//MARK: - Class Example 2
//var hero3 = ClassHero(name: "Iron Man", universe: "Marvel")
//var anotherMarvel3 = hero3 // reference like in c pointer
//anotherMarvel3.name = "Hulk"
//var avengers = [hero3,anotherMarvel3]
//print("hero3 name is \(hero3.name)")
//print("anotherhero3 name is \(anotherMarvel3.name)")
//print("first avenger name is \(avengers[0].name)")

//MARK: - Class - Structure Example 3
//let hero = ClassHero(name: "Iron Man", universe: "Marvel")
//hero.name = "Burak" // class lar buna izin verir
//hero.universe = "Sivas" // class lar buna izin verir
//hero = ClassHero() // buna izin verme çünkü "hero" is a let constant


let hero = StructureHero(name: "Iron Man", universe: "Marvel")
//hero.name = "Burak" // buna izin vermez çünkü "hero" is a let constant
//hero.universe = "Sivas" // buna izin vermez çünkü "hero" is a let constant
print(hero.takeReverseName()) 

//
//  main.swift
//  ClassesDemo
//
//  Created by Burak Gül on 11.06.2023.
//

let skeleton1 = Enemy(health: 100, attackStrength: 10)
let skeleton2 = skeleton1
// skeleton1 ile skeleton2 aynı yeri gösteren 2 pointerdır aslında
// pass by reference olur classlarda
// pass by value ise structlarda olur


skeleton1.takeDamage(amount: 10)
print(skeleton2.health)


//print(skeleton.health)
//skeleton.move()
//skeleton.attack()











//
//
//let dragon = Dragon()
//dragon.wingSpan = 5
//dragon.attackStrength = 15
//dragon.talk(speech: "My teet are swords! My claws are spears ! My wings are a hurricane")
//
//dragon.move()
//dragon.attack()


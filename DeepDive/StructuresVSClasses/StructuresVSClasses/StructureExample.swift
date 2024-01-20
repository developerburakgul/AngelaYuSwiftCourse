//
//  StructureExample.swift
//  StructuresVSClasses
//
//  Created by Burak Gül on 20.01.2024.
//

import Foundation


struct StructureHero {
    var name : String
    var universe : String
    
    func takeReverseName() -> String {
        return String(self.name.reversed())
        // hulk kluh
    }
    
    mutating func reverseName()  {
        self.name = String(self.name.reversed())
    }
}


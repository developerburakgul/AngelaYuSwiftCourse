//
//  AFile.swift
//  SwiftAccessLevels
//
//  Created by Angela Yu on 14/09/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class AClass {
    
    //Global variables, also called class properties.
    private var aPrivateProperty = "private property"
    
    fileprivate var aFilePrivateProperty = "fileprivate property"
    
    var anInternalProperty = "internal property"
    
    func methodA () {
        
        var aLocalVariable = "local variable"
        
        //Step 1. Try to print aLocalVariable Here - Possible
        //print("\(aLocalVariable) printed from methodA in Aclass")
        
        //Step 3. Try to print aPrivateProperty Here - Possible
        //print("\(aPrivateProperty) printed from MethodA in AClass")
        
        //Step 6. Try to print aFilePrivateProperty Here - Possible
        //print("\(aFilePrivateProperty) printed from methodA in AClass")
        
        //Step 9. Try to print anInternalProperty Here - Possible
        //print("\(anInternalProperty) printed methodA in AClass")
    }
    
    func methodB () {
        
        //Step 2. Try to print aLocalVariable Here - Impossible
        //print("\(aLocalVariable)")
        //Step 4. Try to print aPrivateProperty Here - Possible
        //print("\(aPrivateProperty) printed methodB in AClass")
        
    }
    
}

class AnotherClassInTheSameFile {
    
    init() {
        //var aclass = AClass()
        //Step 5. Try to print aPrivateProperty Here - Impossible
        //print("\(aclass.aPrivateProperty) did not print init in AnotherClassInTheSameFile")
        
        //var aclass = AClass()
        //Step 7. Try to print aFilePrivateProperty Here - Possible
        //print("\(aclass.aFilePrivateProperty) printed from init in AnotherClassInTheSameFile")
        
        
    }
}

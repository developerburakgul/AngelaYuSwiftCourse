//
//  AnotherFile.swift
//  SwiftAccessLevels
//
//  Created by Angela Yu on 14/09/2018.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class AnotherClassInAnotherFile {
    
    init() {
        var aclass = AClass()
        //Step 8. Try to print aFilePrivateProperty Here - Impossible
        //print("\(aclass.aFilePrivateProperty) did not print from init in AnotherClassInAnotherFile")
        
        //Step 10. Try to print anInternalProperty Here - Possible
        //var aclass = AClass()
        //print("\(aclass.anInternalProperty) printed from init AnotherClassInAnotherFile ")
        
        
        
    }
    
}

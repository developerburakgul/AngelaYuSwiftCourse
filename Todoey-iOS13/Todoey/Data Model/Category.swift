//
//  Category.swift
//  Todoey
//
//  Created by Burak Gül on 14.11.2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift
class Category: Object {
    @objc dynamic var name : String = ""
    let items = List<Item>()
    @objc dynamic var hexCodeOfColor : String = ""
}



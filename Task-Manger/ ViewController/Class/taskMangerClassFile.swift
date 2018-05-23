//
//  taskMangerClassFile.swift
//  Task-Manger
//
//  Created by Americo Lopez on 5/10/18.
//  Copyright © 2018 Americo Lopez. All rights reserved.
//

import Foundation
import RealmSwift

class Tasks: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var details: String = ""
    @objc dynamic var dueDate: Date = Date()
    @objc dynamic var completed = false
    
}

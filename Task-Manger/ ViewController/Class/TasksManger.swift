//
//  TasksManger.swift
//  Task-Manger
//
//  Created by Americo Lopez on 5/17/18.
//  Copyright © 2018 Americo Lopez. All rights reserved.
//

import Foundation
import RealmSwift 
final class TasksManger {
    
    static let sharedInstance = TasksManger()
   

    private init() {
        
    }
    
    let realm = try! Realm()
    
    let calendar  = Calendar.current
    var game: Results<Tasks>!
    
    func addTasks(_ Tasks: Tasks ){
        try! realm.write{
            realm.add(Tasks)
        }
    }
    
    func deleteTasks(_ tasks: Tasks) {
        try! realm.write{
            realm.delete(tasks)
        // look if .remove is a thing in realm, find out how to delete something if realm
        }
    }

}
func completeTasks(tasks: Tasks) {
    try! realm.write {
        if tasks.completed{
            tasks.completed = false
            tasks.dueDate = Calendar.date(byAdding: .day, value: 3, to: Date())!
        }else{
            tasks.completed = true
            tasks.dueDate = Date()
            
        }
    }
}

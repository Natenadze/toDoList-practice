//
//  ToDoItemModel.swift
//  ToDoList
//

import Foundation
import RealmSwift


public class LocalDataBaseManager {
    
    static var realm: Realm? = {
           do {
               let realm = try Realm()
               return realm
           } catch {
               return nil
           }
       }()
    
}


class Task: Object {
    
    // We have to give a unique ID to every object
    @objc dynamic var id = 0
    
    // to specify the name of the property, to be used as a primary key
    override static func primaryKey() -> String? {
        return "id"
    }
    
    @objc dynamic var name = ""
    @objc dynamic var details = ""
    @objc dynamic var completionDate = Date()
    @objc dynamic var startDate = Date()
    @objc dynamic var isComplete = false
    
}


/*
 struct ToDoItemModel {
     
     var name: String
     var details: String
     var completionDate: Date
     var startDate: Date = Date()
     var isComplete: Bool = false
     
     
     // MARK: - Init
     
     init(name: String, details: String, completionDate: Date) {
         
         self.name = name
         self.details = details
         self.completionDate = completionDate
     }
 }
 */


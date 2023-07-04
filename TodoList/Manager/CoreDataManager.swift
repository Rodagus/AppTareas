//
//  CoreDataManager.swift
//  TodoList
//
//  Created by Rodrigo Viveros Ramirez on 22-06-23.
//

import Foundation
import CoreData

class CoreDataManager {
    let persistentContainer: NSPersistentContainer
    static let shared: CoreDataManager = CoreDataManager()
    private init() {
        persistentContainer = NSPersistentContainer(name: "SimpleTodoModel")
        persistentContainer.loadPersistentStores{description, error in
            if let error = error {
                fatalError("Unable to initialize Core Data \(error)")
            }
        }
    } 
}

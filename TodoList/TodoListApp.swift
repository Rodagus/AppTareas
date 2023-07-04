//
//  TodoListApp.swift
//  TodoList
//
//  Created by Rodrigo Viveros Ramirez on 22-06-23.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    let persistentContainer = CoreDataManager.shared.persistentContainer

    var body: some Scene {
        WindowGroup {
            ContentView().environment(\.managedObjectContext, persistentContainer.viewContext)
        }
    }
}

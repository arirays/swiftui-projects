//
//  MyAppCoreDataApp.swift
//  MyAppCoreData
//
//  Created by AS on 4/15/24.
//

import SwiftUI

@main
struct MyAppCoreDataApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

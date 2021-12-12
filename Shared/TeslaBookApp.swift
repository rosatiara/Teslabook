//
//  TeslaBookApp.swift
//  Shared
//
//  Created by T on 12/12/21.
//

import SwiftUI

@main
struct TeslaBookApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

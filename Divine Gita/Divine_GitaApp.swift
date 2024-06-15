//
//  Divine_GitaApp.swift
//  Divine Gita
//
//  Created by Naveen Keerthy on 6/14/24.
//

import SwiftUI

@main
struct Divine_GitaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

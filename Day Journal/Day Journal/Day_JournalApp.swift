//
//  Day_JournalApp.swift
//  Day Journal
//
//  Created by Nick Walter on 9/4/23.
//

import SwiftUI
import SwiftData

@main
struct Day_JournalApp: App {
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            JournalEntry.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    
    var body: some Scene {
        WindowGroup {
            JournalEntriesListView()
        }
        .modelContainer(sharedModelContainer)
    }
}

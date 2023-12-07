//
//  ContentView.swift
//  Day Journal
//
//  Created by Nick Walter on 9/4/23.
//

// Make a list that displays an array of Ints

import SwiftUI
import SwiftData

struct JournalEntriesListView: View {
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \JournalEntry.date, order: .reverse) private var journalEntries: [JournalEntry]
    
    @State var showCreateView = false
    
    var body: some View {
        NavigationStack {
            List(journalEntries) { listedJournalEntry in
                NavigationLink(destination: EditJournalEntryView(editingJournalEntry: listedJournalEntry)) {
                    JournalEntryRowView(rowJournalEntry: listedJournalEntry)
                }
            }
            .navigationTitle("\(journalEntries.count) Journal Entries")
            .toolbar {
                Button(action: {
                    showCreateView = true
                }) {
                    Label("Add Item", systemImage: "plus")
                }
            }
            .sheet(isPresented: $showCreateView) {
                CreateJournalEntryView()
            }
        }
        
    }
}

#Preview {
    JournalEntriesListView()
        .modelContainer(for: JournalEntry.self, inMemory: true)
}




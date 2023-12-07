//
//  ContentView.swift
//  Design Fun
//
//  Created by Nick Walter on 7/31/23.
//

// Make ann app with an add and remove button for the counter

import SwiftUI

struct ContentView: View {
    
    @State var count = 0
    
    var body: some View {
        VStack {
            Text("People: \(count)")
                .font(.largeTitle)
                .padding()
            
            Button("Add") {
                count += 1
                print(count)
            }
            .padding()
            
            Button("Remove") {
                count -= 1
                print(count)
            }
        }
    }
}

#Preview {
    ContentView()
}




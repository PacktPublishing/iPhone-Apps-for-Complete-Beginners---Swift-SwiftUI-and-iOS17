//
//  ContentView.swift
//  CapFun
//
//  Created by Nick Walter on 8/23/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var userText = "Hello my name is nick"
    @State var capMode = 1
    
    var body: some View {
        VStack {
            
            Spacer()
            
            if capMode == 1 {
                Text(userText.uppercased())
                    .font(.largeTitle)
            }
            if capMode == 2 {
                Text(userText.capitalized)
                    .font(.largeTitle)
            }
            if capMode == 3 {
                Text(userText.lowercased())
                    .font(.largeTitle)
            }
            
            Spacer()
            
            Button(action:{
                let pasteboard = UIPasteboard.general
                
                if capMode == 1 {
                    pasteboard.string = userText.uppercased()
                }
                if capMode == 2 {
                    pasteboard.string = userText.capitalized
                }
                if capMode == 3 {
                    pasteboard.string = userText.lowercased()
                }
            }) {
                CustomButtonView(title: "Copy", color: .orange)
            }
            
            HStack {
                Button(action: {
                    capMode = 1
                }) {
                    CustomButtonView(title: "ALL CAPS", color: .red)
                }
                
                Button(action: {
                    capMode = 2
                }) {
                    CustomButtonView(title: "First Letter", color: .green)
                }
                
                Button(action: {
                    capMode = 3
                }) {
                    CustomButtonView(title: "lowercase", color: .blue)
                }
            }
            
            TextField("Enter text here :)", text: $userText)
                .padding(.vertical)
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

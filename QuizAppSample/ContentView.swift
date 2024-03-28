//
//  ContentView.swift
//  QuizAppSample
//
//  Created by Scholar on 3/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemYellow)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Music Fun Facts!")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    
                    NavigationLink(destination: Text("You've arrived to the Second View 🎊")) {
                        Text("Next!")
                    }
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(5.0)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}

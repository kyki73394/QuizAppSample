//
//  ContentView.swift
//  QuizAppSample
//
//  Created by Scholar on 3/28/24.
//

import SwiftUI

struct ContentView: View {
    @State private var response = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemYellow)
                    .ignoresSafeArea()
                
                VStack {
                    Text("Color Theory Quiz!")
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    
                    VStack {
                        Text("🎨 Question 1 🎨")
                            .font(.title)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        
                        Text("What color is complementary to yellow?")
                            .font(.title2)
                            .padding()
                        
                        Button("Red") {
                            response = "Not quite!"
                        }
                        .padding()
                        .fontWeight(.bold)
                        .frame(width: 270)
                        .background()
                        .foregroundColor(.red)
                        .cornerRadius(5.0)
                        
                        Button("Blue") {
                            response = "Close!"
                        }
                        .padding()
                        .fontWeight(.bold)
                        .frame(width: 270)
                        .background()
                        .foregroundColor(.blue)
                        .cornerRadius(5.0)
                        
                        Button("Purple") {
                            response = "Yes! Purple is complementary to yellow. 🥳"
                        }
                        .padding()
                        .fontWeight(.bold)
                        .frame(width: 270)
                        .background()
                        .foregroundColor(.purple)
                        .cornerRadius(5.0)
                        
                        Text(response)
                            .font(.title3)
                            .padding()
                    }
                    .padding()
                    .background(
                        Image("rainbow").resizable()
                    )
                    .cornerRadius(5.0)
                    
                    Spacer()
                    
                    NavigationLink(destination: Question2()) {
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

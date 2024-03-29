//
//  Question3.swift
//  QuizAppSample
//
//  Created by Scholar on 3/28/24.
//

import SwiftUI

struct Question3: View {
    @State private var response = ""
    
    var body: some View {
        ZStack {
            Color(.mint)
                .ignoresSafeArea()
            
            VStack {
                Text("Color Theory Quiz!")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                Spacer()
                VStack {
                    Text("🎨 Question 3 🎨")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Text("What color is created when you mix blue and orange?")
                        .font(.title2)
                        .padding()
                    
                    Button("Orange") {
                        response = "Almost!"
                    }
                    .padding()
                    .fontWeight(.bold)
                    .frame(width: 270)
                    .background()
                    .foregroundColor(.orange)
                    .cornerRadius(5.0)
                    
                    Button("Brown") {
                        response = "Yes! Mixing blue and orange creates the color brown. 🤎"
                    }
                    .padding()
                    .fontWeight(.bold)
                    .frame(width: 270)
                    .background()
                    .foregroundColor(.brown)
                    .cornerRadius(5.0)
                    
                    Button("Teal") {
                        response = "Not quite!"
                    }
                    .padding()
                    .fontWeight(.bold)
                    .frame(width: 270)
                    .background()
                    .foregroundColor(.teal)
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
                
                NavigationLink(destination: ContentView()) {
                    Text("Restart ⏮️")
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

#Preview {
    Question3()
}

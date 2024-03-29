//
//  Question2.swift
//  QuizAppSample
//
//  Created by Scholar on 3/28/24.
//

import SwiftUI

struct Question2: View {
    @State private var response = ""
    
    var body: some View {
        ZStack {
            Color(.green)
                .ignoresSafeArea()
            
            VStack {
                Text("Color Theory Quiz!")
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                VStack {
                    Text("🎨 Question 2 🎨")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    Text("What color is analogous (AKA next to) green?")
                        .font(.title2)
                        .padding()
                    
                    Button("Blue") {
                        response = "Yes! Blue is analogous to green. 🥳"
                    }
                    .padding()
                    .fontWeight(.bold)
                    .frame(width: 270)
                    .background()
                    .foregroundColor(.blue)
                    .cornerRadius(5.0)
                    
                    Button("Orange") {
                        response = "Not quite!"
                    }
                    .padding()
                    .fontWeight(.bold)
                    .frame(width: 270)
                    .background()
                    .foregroundColor(.orange)
                    .cornerRadius(5.0)
                    
                    Button("Purple") {
                        response = "Close!"
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
                
                NavigationLink(destination: Question3()) {
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

#Preview {
    Question2()
}

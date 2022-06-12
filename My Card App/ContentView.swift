//
//  ContentView.swift
//  My Card App
//
//  Created by Macbook on 13.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.10, green: 0.74, blue: 0.61).ignoresSafeArea()
            VStack {
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(lineWidth: 5.0))
                
                Text("Азат Аллабердин")
                    .font(.title2)
                    .fontWeight(.heavy)
                Text("iOS / Java Developer")
                    .font(.headline)
                    .fontWeight(.light)
                
                Divider()
                Card(image: "phone.fill", message: "+7 999 131 91 69")
                
                Card(image: "envelope.fill", message: "swiftallaber@gmail.com")
            }.foregroundColor(.white)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    let image: String
    let message: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0).frame(height: 50.0).padding(.horizontal)
            .frame( height: 50.0)
            .overlay(HStack {
                Image(systemName: image)
                
                Text(message)
                    .fontWeight(.semibold)
            }.foregroundColor(Color(red: 0.10, green: 0.74, blue:0.61)))
    }
}

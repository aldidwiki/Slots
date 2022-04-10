//
//  ContentView.swift
//  Slots
//
//  Created by Aldi Dwiki Prahasta on 10/04/22.
//

import SwiftUI

struct ContentView: View {
    @State private var credits = 1000
    @State private var first = "apple"
    @State private var second = "star"
    @State private var third = "cherry"
    
    var body: some View {
        VStack {
            Text("SwiftUI Slots!")
                .font(.largeTitle)
                .fontWeight(.medium)
                .padding()
            Spacer()
            Text("Credits : \(String(credits))")
            Spacer()
            HStack {
                Image(first).resizable().aspectRatio(contentMode: ContentMode.fit).padding(.horizontal)
                Image(second).resizable().aspectRatio(contentMode: ContentMode.fit).padding(.horizontal)
                Image(third).resizable().aspectRatio(contentMode: ContentMode.fit).padding(.horizontal)
            }.padding(.horizontal)
            Spacer()
            
            Button {
                let myArray = ["star", "apple", "cherry"]
                first = myArray.randomElement()!
                second = myArray.randomElement()!
                third = myArray.randomElement()!
                
                if first == second && first == third && second == third {
                    credits += 15
                } else {
                    credits -= 5
                }
                
            } label: {
                Text("Spin")
                    .font(.title2)
                    .foregroundColor(Color.white)
                    .padding(.horizontal, 36)
                    .padding(.vertical, 6)
            }
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.red/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/16.0/*@END_MENU_TOKEN@*/)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

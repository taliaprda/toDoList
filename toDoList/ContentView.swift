//
//  ContentView.swift
//  toDoList
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .fontWeight(.black)
                    .font(.system(size:40))
                    .foregroundColor(Color(hue: 0.893, saturation: 0.344, brightness: 1.0))
                
                Spacer()
                
                Button(action: { }){
                    Text("+")
                        .font(.largeTitle)
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

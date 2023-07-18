//
//  ContentView.swift
//  toDoList
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct ContentView: View {
    @State var toDoItems: [toDoItem] = []
    @State private var showNewTask = false
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .fontWeight(.black)
                    .font(.system(size:40))
                    .foregroundColor(Color(hue: 0.893, saturation: 0.344, brightness: 1.0))
                
                Spacer()
                
                Button(action: {self.showNewTask = true}){
                    Text("+")
                        .font(.largeTitle)
                }
            }
            .padding()
            Spacer()
            
            List {
                ForEach (toDoItems) {toDoItem in
                Text(toDoItem.title)
                }
            }
            
            if showNewTask == true{
                newToDoView(title: "", isImportant: false)
                    }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

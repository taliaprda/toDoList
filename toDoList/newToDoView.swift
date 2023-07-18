//
//  newToDoView.swift
//  toDoList
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct newToDoView: View {
    
    @State var title: String
    @State var isImportant: Bool
    
    var body: some View {
        VStack {
            Text("Task Title")
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Enter the task description", text: $title)
                .padding()
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.0, brightness: 0.934)/*@END_MENU_TOKEN@*/)
                .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                .padding()
            
            Toggle(isOn:$isImportant){Text("Is it important?")}
                .padding(.horizontal)
            
            Button(action: {})
            {Text("Add")}
                .padding()
        }
    }
    
struct newToDoView_Previews: PreviewProvider {
    static var previews: some View
    {
        newToDoView(title: "", isImportant: false)
        }
    }
}

//
//  ContentView.swift
//  Todo
//
//  Created by JunKyu Lee on 9/29/24.
//

import SwiftUI

struct ContentView: View {
    
    var todoList : [Todo] = [
        Todo(title: "todo1"),
        Todo(title: "todo2"),
        Todo(title: "todo3")
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(todoList) { todo in
                    HStack {
                        Image(systemName: todo.isCompleted ? "circle.fill" : "circle")
                            .foregroundStyle(Color.pink)
                            .onTapGesture {
                                 todo.isCompleted.toggle()
                            }
                        
                        NavigationLink {
                            Text(todo.description)
                        } label: {
                            Text(todo.title)
                                .strikethrough(todo.isCompleted, color: Color.gray)
                                .foregroundStyle(todo.isCompleted ? Color.gray : Color.primary)
                        }
                    }
                }
            }
            .navigationTitle("Jun's Todo List ☑️")
        }
    }
}

#Preview {
    ContentView()
}

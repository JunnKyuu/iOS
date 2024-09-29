//
//  ContentView.swift
//  Todo
//
//  Created by JunKyu Lee on 9/29/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var todoList : [Todo] = [
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
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("Jun's Todo List ☑️")
            .toolbar {
                ToolbarItem {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: {
                        let newTodo: Todo = Todo(title: "새로운 투두")
                        todoList.append(newTodo)
                    }, label: {
                        Image(systemName: "plus")
                    })
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

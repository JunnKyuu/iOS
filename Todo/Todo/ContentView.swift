//
//  ContentView.swift
//  Todo
//
//  Created by JunKyu Lee on 9/29/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query var todoList : [Todo] = [
        Todo(title: "todo1"),
        Todo(title: "todo2"),
        Todo(title: "todo3")
    ]
    
    func addTodo() {
        withAnimation {
            let newTodo: Todo = Todo(title: "새로운 투두")
            modelContext.insert(newTodo)
        }
    }
    
    func deleteTodo(indexSet: IndexSet) {
        withAnimation{
            for index in indexSet {
                let todo : Todo = todoList[index]
                modelContext.delete(todo)
            }
        }
    }
    
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
                            TodoDetailView(todo: todo)
                        } label: {
                            Text(todo.title)
                                .strikethrough(todo.isCompleted, color: Color.gray)
                                .foregroundStyle(todo.isCompleted ? Color.gray : Color.primary)
                        }
                    }
                    .listRowSeparator(.hidden)
                }
                .onDelete(perform: deleteTodo)
                
            }
            .listStyle(.plain)
            .navigationTitle("Jun's Todo List ☑️")
            .toolbar {
                ToolbarItem {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addTodo, label: {
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

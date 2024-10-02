//
//  TodoDetailView.swift
//  Todo
//
//  Created by JunKyu Lee on 10/2/24.
//

import SwiftUI

struct TodoDetailView: View {
    @State var todo: Todo
    var body: some View {
        VStack {
            TextField("detail view", text: $todo.title)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 3)
                )
            TextEditor(text: $todo.description)
                .overlay(
                    RoundedRectangle(cornerRadius: 8).stroke(lineWidth: 3)
                )

        }
        .navigationTitle("Edit Todo✏️")
        .padding()
    }
}

#Preview {
    TodoDetailView(todo: Todo(title: "sample"))
}

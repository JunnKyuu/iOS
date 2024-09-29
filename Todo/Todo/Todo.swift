//
//  Todo.swift
//  Todo
//
//  Created by JunKyu Lee on 9/29/24.
//

import Foundation

@Observable
class Todo : Identifiable {
    let id: UUID
    var title: String
    var isCompleted: Bool
    var description: String
    
    init(title: String) {
        self.id = UUID()
        self.title = title
        self.isCompleted = false
        self.description = "Todo Detail View"
    }
}

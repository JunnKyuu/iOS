//
//  Todo.swift
//  Todo
//
//  Created by JunKyu Lee on 9/29/24.
//

import Foundation
import SwiftData

@Model
class Todo : Identifiable {
    @Attribute(.unique) var id : UUID
    var title: String
    var isCompleted: Bool
    var detail: String
    
    init(title: String) {
        self.id = UUID()
        self.title = title
        self.isCompleted = false
        self.detail = "Todo Detail View"
    }
}

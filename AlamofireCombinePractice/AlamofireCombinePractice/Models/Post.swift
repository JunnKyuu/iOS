//
//  Post.swift
//  AlamofireCombinePractice
//
//  Created by JunKyu Lee on 11/24/24.
//

import Foundation

class Post: Codable, Identifiable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

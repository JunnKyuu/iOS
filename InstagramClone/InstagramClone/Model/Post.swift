//
//  Post.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/18/24.
//

import Foundation

struct Post: Codable, Identifiable {
    let id: String
    let userId: String
    let caption: String
    let imageURL: String
    var like: Int
    let date: Date
}

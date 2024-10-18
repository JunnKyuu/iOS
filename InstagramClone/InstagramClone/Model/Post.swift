//
//  Post.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/18/24.
//

import Foundation

struct Post: Codable {
    let id: String
    let caption: String
    let imageURL: String
    var like: Int
    let date: Date
}

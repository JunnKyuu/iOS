//
//  Post.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/18/24.
//

import Foundation

struct Post: Codable {
    var id: String
    var caption: String
    var imageURL: String
    var like: Int
    var date: Date
}

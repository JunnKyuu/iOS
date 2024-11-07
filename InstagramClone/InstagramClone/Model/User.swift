//
//  User.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 11/6/24.
//

import Foundation

struct User: Codable {
    var userId: String
    var email: String
    var userName: String
    var name: String
    var bio: String?
    var profileImageUrl: String?
}

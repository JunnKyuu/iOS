//
//  ProfileViewModel.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 11/16/24.
//

import Foundation

@Observable
class ProfileViewModel {
    var user: User?
    
    var name: String
    var username: String
    var bio: String
    
    init() {
        let tempUser = AuthManager.shared.currentUser
        self.user = tempUser
        
        self.name = tempUser?.name ?? ""
        self.username = tempUser?.userName ?? ""
        self.bio = tempUser?.bio ?? ""
    }
}

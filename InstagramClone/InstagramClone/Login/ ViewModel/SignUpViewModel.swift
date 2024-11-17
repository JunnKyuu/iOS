//
//  SignUpViewModel.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 11/1/24.
//

import Foundation
import FirebaseAuth

@Observable
class SignUpViewModel {
    var email: String = ""
    var password: String = ""
    var name: String = ""
    var username: String = ""
    
    func createUser() async {
        await AuthManager.shared.createUser(email: email, password: password, name: name, username: username)
        email = ""
        password = ""
        name = ""
        username = ""
    }
}

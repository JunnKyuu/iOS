//
//  LoginVIewModel.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 11/16/24.
//

import Foundation

@Observable
class LoginViewModel {
    var email: String = ""
    var password: String = ""
    
    func signin() async {
        await AuthManager.shared.signin(email: email, password: password)
    }
}

//
//  AuthManager.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 11/6/24.
//

import Foundation
import FirebaseAuth
import Firebase

@Observable
class AuthManager {
    static let shared: AuthManager = AuthManager()
    
    var currentUserSession: FirebaseAuth.User?
    
    init() {
        self.currentUserSession = Auth.auth().currentUser
    }
    
    func createUser(email: String, password: String, name: String, userName: String) async {
        print("email: ", email)
        print("password: ", password)
        print("name: ", name)
        print("userName: ", userName)
        
        do {
            let result: AuthDataResult = try await Auth.auth().createUser(withEmail: email, password: password)
            currentUserSession = result.user
            guard let userId: String = currentUserSession?.uid else { return }
            await uploadUserData(userId: userId, email: email, userName: userName, name: name)
        } catch {
            print("DEBUG: Failed to create user with error \(error.localizedDescription)")
        }
    }
    
    func uploadUserData(userId: String, email: String, userName: String, name: String) async {
        let user: User = User(userId: userId, email: email, userName: userName, name: name)
        do {
            let encodedUser = try Firestore.Encoder().encode(user)
            try await Firestore.firestore().collection("users").document(user.userId).setData(encodedUser)
        } catch {
            print("DEBUG: Failed to upload user data with error \(error.localizedDescription)")
        }
    }
    
    func signOut() {
        do {
            try Auth.auth().signOut()
            currentUserSession = nil
        } catch {
            print("DEBUG: Failed to sign out with error \(error.localizedDescription)")
        }
    }
}

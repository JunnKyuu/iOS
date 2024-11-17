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
    
    var currentAuthUser: FirebaseAuth.User?
    var currentUser: User?
    
    init() {
        self.currentAuthUser = Auth.auth().currentUser
        Task {
            await loadUserData()
        }
    }
    
    func createUser(email: String, password: String, name: String, userName: String) async {
        print("email: ", email)
        print("password: ", password)
        print("name: ", name)
        print("userName: ", userName)
        
        do {
            let result: AuthDataResult = try await Auth.auth().createUser(withEmail: email, password: password)
            currentAuthUser = result.user
            guard let userId: String = currentAuthUser?.uid else { return }
            await uploadUserData(userId: userId, email: email, userName: userName, name: name)
        } catch {
            print("DEBUG: Failed to create user with error \(error.localizedDescription)")
        }
    }
    
    func uploadUserData(userId: String, email: String, userName: String, name: String) async {
        let user: User = User(userId: userId, email: email, userName: userName, name: name)
        self.currentUser = user
        do {
            let encodedUser = try Firestore.Encoder().encode(user)
            try await Firestore.firestore().collection("users").document(user.userId).setData(encodedUser)
        } catch {
            print("DEBUG: Failed to upload user data with error \(error.localizedDescription)")
        }
    }
    
    func signin(email: String, password: String) async {
        do {
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            currentAuthUser = result.user
            await loadUserData()
        } catch {
            print("DEBUG: Failed to sign in with error \(error.localizedDescription)")
        }
    }
    
    func loadUserData() async {
        guard let userId = self.currentAuthUser?.uid else { return }
        do {
            self.currentUser = try await Firestore.firestore().collection("users").document(userId).getDocument(as: User.self)
            print("current user: ", currentUser!)
        } catch {
            print("DEBUG: Failed to load user data with error \(error.localizedDescription)")
        }
    }
    
    func signout() {
        do {
            try Auth.auth().signOut()
            currentAuthUser = nil
        } catch {
            print("DEBUG: Failed to sign out with error \(error.localizedDescription)")
        }
    }
}
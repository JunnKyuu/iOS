//
//  ContentView.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/8/24.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    @State var signUpViewModel: SignUpViewModel = SignUpViewModel()
    
    var body: some View {
        if AuthManager.shared.currentUserSession != nil {
            MainTabView()
        } else {
            LoginView()
                .environment(signUpViewModel)
        }
        
    }
}

#Preview {
    ContentView()
}

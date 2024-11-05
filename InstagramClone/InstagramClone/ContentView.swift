//
//  ContentView.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/8/24.
//

import SwiftUI

struct ContentView: View {
    @State var isLogin: Bool = false
    
    var body: some View {
        if isLogin {
            MainTabView()
        } else {
            LoginView()
        }
        
    }
}

#Preview {
    ContentView(isLogin: false)
}

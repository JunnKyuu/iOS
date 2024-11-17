//
//  MainTabView.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/8/24.
//

import SwiftUI
import FirebaseAuth

struct MainTabView: View {
    @State var tabIndex: Int = 0
    
    var body: some View {
        TabView(selection: $tabIndex) {
             Text("Feed")
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(0)
            
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
            
            NewPostView(tabIndex: $tabIndex)
                .tabItem {
                    Image(systemName: "plus.app.fill")
                }
                .tag(2)
            VStack {
                Text("Reels")
                Button {
                    AuthManager.shared.signout()
                } label: {
                    Text("로그아웃")
                }
            }
                .tabItem {
                    Image(systemName: "movieclapper.fill")
                }
                .tag(3)
            ProfileView()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                }
                .tag(4)
        }
        .tint(.primary)
    }
}

#Preview {
    MainTabView()
}

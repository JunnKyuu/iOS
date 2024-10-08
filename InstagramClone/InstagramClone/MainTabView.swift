//
//  MainTabView.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/8/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("Feed")
                .tabItem {
                    Image(systemName: "house")
                }
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            NewPostView()
                .tabItem {
                    Image(systemName: "plus.app.fill")
                }
            Text("Reels")
                .tabItem {
                    Image(systemName: "movieclapper.fill")
                }
            Text("Profile")
                .tabItem {
                    Image(systemName: "person.circle.fill")
                }
        }
    }
}

#Preview {
    MainTabView()
}

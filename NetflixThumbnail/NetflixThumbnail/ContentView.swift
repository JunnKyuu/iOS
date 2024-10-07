//
//  ContentView.swift
//  NetflixThumbnail
//
//  Created by JunKyu Lee on 10/6/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("home")
                }
                .toolbarBackground(.black, for: .tabBar)
            
            Text("Second Tab view")
                .tabItem {
                    Image(systemName: "gamecontroller.fill")
                    Text("Game")
                }
            
            Text("Third Tab view")
                .tabItem {
                    Image(systemName: "play.rectangle.on.rectangle")
                    Text("New & Hot")
                }
            
            Text("Fourth Tab view")
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("My")
                }
        }
        
    }
}

#Preview {
    ContentView()
}

//
//  HomeView.swift
//  swiftUI_review
//
//  Created by JunKyu Lee on 1/24/24.
//

import SwiftUI

struct HomeView: View {
    @State private var selection: Tab = .tax
    
    enum Tab {
        case tax
        case yeartax
        case service
        case search
        case more
    }
    
    var body: some View {
        TabView(selection: $selection) {
            TaxView()
                .tabItem {
                    Image(systemName: "wonsign.circle.fill")
                    Text("세금")
                }
                .tag(Tab.tax)
            Color.orange
                .tabItem {
                    Image(systemName: "calendar")
                    Text("연말정산")
                }
                .tag(Tab.yeartax)
            Color.yellow
                .tabItem {
                    Image(systemName: "plus.app")
                    Text("돈찾기")
                }
                .tag(Tab.service)
            Color.green
                .tabItem {
                    Image(systemName: "wallet.pass.fill")
                    Text("월급찾기")
                }
                .tag(Tab.search)
            Color.blue
                .tabItem {
                    Image(systemName: "tablecells.fill.badge.ellipsis")
                    Text("더보기")
                }
                .tag(Tab.more)
        }
        .accentColor(.black)
    }
}

#Preview {
    HomeView()
}
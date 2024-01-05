//
//  ProfileView.swift
//  SwiftUIPractice
//
//  Created by JunKyu Lee on 1/4/24.
//

import SwiftUI

struct ProfileView: View {
    @State private var selection: MenuBar = .home
    
    enum MenuBar {
        case home
        case match
        case recommend
        case setting
    }
    
    var body: some View {
        TabView(selection: $selection, content:  {
            ZStack(alignment: .bottom, content: {
                Image("Kazuki")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                HStack {
                    VStack(alignment: .leading) {
                        Text("이름: 코즈카 카즈키")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(.white)
                        Text("소속: 수원삼성블루윙즈")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                .background(.blue)
            })
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                }
                .tag(MenuBar.home)
            Color(.blue)
                .tabItem {
                    Image(systemName: "soccerball.inverse")
                    Text("경기일정")
                }
                .tag(MenuBar.match)
            Color(.red)
                .tabItem {
                    Image(systemName: "hand.thumbsup.fill")
                    Text("추천")
                }
                .tag(MenuBar.recommend)
            Color(.black)
                .tabItem {
                    Image(systemName: "gearshape.fill")
                    Text("설정")
                }
                .tag(MenuBar.setting)
        })
    }
}

#Preview {
    ProfileView()
}

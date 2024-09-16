//
//  ContentView.swift
//  PetInformationApp
//
//  Created by JunKyu Lee on 9/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image("dogProfile")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.teal, lineWidth: 3))
                VStack(alignment: .leading) {
                    Text("이름: 키도")
                    Text("시바견")
                    Text("2017년 5월생")
                }
                .font(.system(size: 20))
                .padding(.leading, 20)
            }
            
            VStack(alignment: .leading) {
                Text("좋아하는 것")
                Text("-각종 고기(🐮=🐷=🐔>🐟")
                Text("-장본게 담겨 있는 종량제 봉투")
                Text("-집에 새로 온 사람")
            }
        }
    }
}
#Preview {
    ContentView()
}

//
//  SearchView.swift
//  swiftUI_review
//
//  Created by JunKyu Lee on 2/24/24.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("돈 버는 서비스")
                        .font(.system(size: 20, weight: .bold, design: .default))
                    Spacer()
                    Text("새 서비스 알림 받기")
                        .font(.system(size: 16, weight: .medium, design: .default))
                        .foregroundColor(Color(hex: "#000000"))
                        .padding(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color(hex: "dddddd").opacity(0.5))
                        )
                }
                .padding()
                VStack {
                    HStack {
                        Text("지금까지 사용한 병원비\n돌려받아요")
                            .font(.system(size: 20, weight: .bold, design: .default))
                        Spacer()
                    }
                    Image(systemName: "house.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color(hex: "#dddddd"))
                        .padding()
                    Button(action: {
                        print("Button Tapped!")
                    }, label: {
                        Text("병원비 돌려받기")
                            .font(.system(size: 18, weight: .bold, design: .default))
                            .foregroundColor(Color(hex: "ffffff"))
                    })
                    .frame(maxWidth: .infinity, minHeight: 50)
                    .background(Color(hex: "#6a5acd"))
                    .cornerRadius(10)
                }
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(hex: "#dddddd"))
                )
            }
            .padding()
        }
    }
}

#Preview {
    SearchView()
}

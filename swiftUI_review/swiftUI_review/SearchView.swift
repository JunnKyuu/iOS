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
                    Text("스택1")
                }
                VStack {
                    Text("스택2")
                }
            }
        }
    }
}

#Preview {
    SearchView()
}

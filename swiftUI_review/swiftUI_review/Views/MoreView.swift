//
//  MoreView.swift
//  swiftUI_review
//
//  Created by JunKyu Lee on 3/2/24.
//

import SwiftUI

struct MoreView: View {
    var body: some View {
        ScrollView {
            VStack {
                // header
                HStack {
                    Text("더보기")
                        .font(.system(size: 22, weight: .bold, design: .default))
                    Spacer()
                    Image(systemName: "gearshape.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(hex: "#7d7d7d"))
                }
                .padding(.bottom, 20)
                VStack {
                    HStack {
                        Image(systemName: "p.circle.fill")
                        Text("내 포인트")
                        Spacer()
                        Text("0P")
                    }
                    .padding()
                    .background(Color.yellow)
                    HStack(spacing: 50) {
                        VStack {
                            Image(systemName: "cup.and.saucer.fill")
                            Text("친구초대")
                        }
                        VStack {
                            Image(systemName: "cup.and.saucer.fill")
                            Text("친구초대")
                        }
                        VStack {
                            Image(systemName: "cup.and.saucer.fill")
                            Text("친구초대")
                        }
                    }
                    .padding()
                    .background(Color(hex: "#dddddd"))
                }
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(hex: "dddddd"))
                )
            }
            .padding()
        }
    }
}

#Preview {
    MoreView()
}

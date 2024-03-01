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
                        .font(.system(size: 23, weight: .bold, design: .default))
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
//                병원비 돌려받기 Stack
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
                        .stroke(Color(hex: "#6a5acd"))
                )
            }
            .padding()
//            사용만 해도 돈 벌어요 Stack
            VStack(spacing: 20) {
                HStack {
                    Text("사용만 해도 돈 벌어요")
                        .font(.system(size: 20, weight: .bold, design: .default))
                    Spacer()
                }
                Button(action: {
                    print("Button Tapped!")
                }, label: {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("부가서비스 진단")
                                .font(.system(size: 18, weight: .bold, design: .default))
                                .foregroundColor(Color(hex: "#000000"))
                            Text("나도 모르게 새는 돈 막기")
                                .font(.system(size: 16, weight: .light, design: .default))
                                .foregroundColor(Color(hex: "#2d2d2d"))
                        }
                        Spacer()
                        Image(systemName: "exclamationmark.octagon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                            .foregroundColor(Color(hex: "000000"))
                    }
                })
                .padding()
                .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(hex: "dddddd"))
                )
                Button(action: {
                    print("Button Tapped!")
                }, label: {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("놓친 월급 찾기")
                                .font(.system(size: 18, weight: .bold, design: .default))
                                .foregroundColor(Color(hex: "#000000"))
                            Text("공제 신청하고 월급 올리기")
                                .font(.system(size: 16, weight: .light, design: .default))
                                .foregroundColor(Color(hex: "#2d2d2d"))
                        }
                        Spacer()
                        Image(systemName: "dollarsign.arrow.circlepath")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                            .foregroundColor(Color(hex: "000000"))
                    }
                })
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
    SearchView()
}

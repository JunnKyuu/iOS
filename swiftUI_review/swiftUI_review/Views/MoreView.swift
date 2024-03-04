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
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        Text("내 포인트")
                            .font(.system(size: 20, weight: .bold, design: .default))
                        Spacer()
                        Button {
                            print("Buton Tapped!")
                        } label: {
                            HStack(spacing: 5) {
                                Text("0P")
                                Image(systemName: "greaterthan")
                            }
                        }
                        .foregroundColor(Color(hex: "000000"))
                    }
                    .padding()
                    HStack(spacing: 50) {
                        Button(action: {
                            print("Button Clicked!")
                        }, label: {
                            VStack {
                                Image(systemName: "cup.and.saucer.fill")
                                Text("친구초대")
                            }
                        })
                        .foregroundColor(Color(hex: "#000000"))
                        Button(action: {
                            print("Button Clicked!")
                        }, label: {
                            VStack {
                                Image(systemName: "person.fill.questionmark")
                                Text("FAQ")
                            }
                        })
                        .foregroundColor(Color(hex: "#000000"))
                        Button(action: {
                            print("Button Clicked!")
                        }, label: {
                            VStack {
                                Image(systemName: "phone.bubble")
                                Text("고객센터")
                            }
                        })
                        .foregroundColor(Color(hex: "#000000"))
                    }
                    .padding()
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

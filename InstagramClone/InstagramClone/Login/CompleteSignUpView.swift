//
//  CompleteSignUpView.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/22/24.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            GradientBackgroundView()
            VStack {
                Image("instagramLogo2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120)
                Spacer()
                ZStack {
                    Circle()
                        .stroke(.gray, lineWidth: 2)
                        .opacity(0.5)
                        .frame(width: 195)
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180)
                        .foregroundStyle(.gray)
                        .opacity(0.8)
                }
                .padding(.bottom, 20)
                Text("JunnKyuu님, Instagram에 오신 것을 환영합니다.")
                    .font(.title)
                    .padding(.horizontal, 12)
                Spacer()
                Button {
                    print("완료 버튼 클릭")
                } label: {
                    Text("완료")
                        .frame(maxWidth: .infinity, maxHeight: 42)
                        .foregroundStyle(.white)
                        .background(.cyan)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .padding(.horizontal)
                Spacer()
                
            }
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .tint(.cyan)
                    }
                }
            }
        }
    }
}

#Preview {
    CompleteSignUpView()
}

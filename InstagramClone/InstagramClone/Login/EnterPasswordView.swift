//
//  EnterPasswordView.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/21/24.
//

import SwiftUI

struct EnterPasswordView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            GradientBackgroundView()
            VStack {
                Text("비밀번호 만들기")
                    .foregroundStyle(.black)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 5)
                Text("다른 사람이 추측할 수 없는 6자 이상의 문자 또는 숫자로 비밀번호를 만드세요.")
                    .foregroundStyle(.black)
                    .font(.callout)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom)
                SecureField("비밀번호", text: .constant(""))                        .modifier(InstagramTextFieldModifier())
                NavigationLink {
                    EnterNameView()
                } label: {
                    Text("다음")
                        .frame(maxWidth: .infinity, maxHeight: 42)
                        .foregroundStyle(.white)
                        .background(.cyan)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                Spacer()
            }
            .padding(.horizontal)
        }
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label : {
                    Image(systemName: "chevron.left")
                        .tint(.cyan)
                }
            }
        }
    }
}

#Preview {
    EnterPasswordView()
}

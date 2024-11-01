//
//  EnterEmailView.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/20/24.
//

import SwiftUI

struct EnterEmailView: View {
    var body: some View {
        SignUpBackgroundView {
            VStack {
                Text("이메일 주소 입력")
                    .foregroundStyle(.black)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 5)
                Text("회원님에게 연락할 수 있는 이메일 주소를 입력하세요. 이 이메일 주소는 프로필에서 다른 사람에게 공개되지 않습니다.")
                    .foregroundStyle(.black)
                    .font(.callout)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom)
                TextField("이메일 주소", text: .constant(""))                    .modifier(InstagramTextFieldModifier())
                NavigationLink {
                    EnterPasswordView()
                } label: {
                    Text("다음")
                        .frame(maxWidth: .infinity, maxHeight: 42)
                        .foregroundStyle(.white)
                        .background(.blue)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                Spacer()
            }

        }
    }
}

#Preview {
    EnterEmailView()
}

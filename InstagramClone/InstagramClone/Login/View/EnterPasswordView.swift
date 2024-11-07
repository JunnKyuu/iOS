//
//  EnterPasswordView.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/21/24.
//

import SwiftUI

struct EnterPasswordView: View {
    @Environment(SignUpViewModel.self) var signUpViewModel
    
    var body: some View {
        @Bindable var signUpViewModel: SignUpViewModel = signUpViewModel
        
        SignUpBackgroundView {
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
                SecureField("비밀번호", text: $signUpViewModel.password)                        .modifier(InstagramTextFieldModifier())
                NavigationLink {
                    EnterNameView()
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
    EnterPasswordView()
}

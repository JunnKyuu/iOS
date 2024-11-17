//
//  EnterUserNameView.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 11/6/24.
//

import SwiftUI

struct EnterUserNameView: View {
    @Environment(SignUpViewModel.self) var signUpViewModel: SignUpViewModel
    
    var body: some View {
        @Bindable var signUpViewModel: SignUpViewModel = signUpViewModel
        
        SignUpBackgroundView {
            VStack {
                Text("사용자 이름 입력")
                    .foregroundStyle(.black)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 5)
                Text("사용자 이름을 직접 추가하거나 추천 이름을 사용하세요. 언제든지 변경할 수 있습니다.")
                    .foregroundStyle(.black)
                    .font(.callout)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom)
                TextField("사용자 이름", text: $signUpViewModel.username)
                    .modifier(InstagramTextFieldModifier())
                NavigationLink {
                    CompleteSignUpView()
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
    EnterUserNameView()
}

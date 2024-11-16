//
//  LoginView.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/18/24.
//

import SwiftUI

struct LoginView: View {
    @State var viewModel: LoginViewModel = LoginViewModel()
    
    var body: some View {
        ZStack {
            GradientBackgroundView()
            NavigationStack {
                Spacer()
                Image("instagramLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 90, height: 90)
                Spacer()
                VStack {
                    TextField("이메일 주소", text: $viewModel.email)
                        .modifier(InstagramTextFieldModifier())
                    SecureField("비밀번호", text: $viewModel.password)
                        .modifier(InstagramTextFieldModifier())
                    BlueButtonView {
                        Task {
                            await viewModel.signin()
                        }
                    } content: {
                        Text("로그인")
                    }
                    Text("비밀번호를 잊으셨나요?")
                }
                .padding(.horizontal)

                Spacer()
                NavigationLink {
                    EnterEmailView()
                } label: {
                    Text("새 계정 만들기")
                        .foregroundStyle(.blue)
                        .frame(maxWidth: .infinity, maxHeight: 42)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.blue, lineWidth: 1)
                        }
                }
                .padding(.horizontal)
            }
        }
        
    }
}

#Preview {
    LoginView()
}

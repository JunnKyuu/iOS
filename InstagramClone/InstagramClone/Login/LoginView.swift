//
//  LoginView.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/18/24.
//

import SwiftUI

struct LoginView: View {
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
                    TextField("이메일 주소", text: .constant(""))
                        .modifier(InstagramTextFieldModifier())
                    SecureField("비밀번호", text: .constant(""))
                        .modifier(InstagramTextFieldModifier())
                    Button {
                        print("로그인 버튼 클릭")
                    } label: {
                        Text("로그인")
                            .frame(maxWidth: .infinity, maxHeight: 42)
                            .foregroundStyle(.white)
                            .background(.cyan)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    Text("비밀번호를 잊으셨나요?")
                }
                Spacer()
                NavigationLink {
                    EnterEmailView()
                } label: {
                    Text("새 계정 만들기")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity, maxHeight: 42)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.cyan, lineWidth: 1)
                        }
                }
                .padding(.bottom, 30)
            }
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    LoginView()
}

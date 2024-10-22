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
                    .frame(width: 57, height: 57)
                Spacer()
                VStack {
                    TextField("이메일 주소", text: .constant(""))
                        .foregroundStyle(.black)
                        .textInputAutocapitalization(.never)
                        .padding(12)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth: 1)
                        }
                        .padding(.horizontal)
                    
                    SecureField("비밀번호", text: .constant(""))
                        .textInputAutocapitalization(.never)
                        .padding(12)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.gray, lineWidth: 1)
                        }
                        .padding(.horizontal)
                    
                    Button {
                        print("로그인 버튼 클릭")
                    } label: {
                        Text("로그인")
                            .frame(maxWidth: 363, maxHeight: 42)
                            .foregroundStyle(.white)
                            .background(.blue)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                    }
                    Text("비밀번호를 잊으셨나요?")
                }
                Spacer()
                NavigationLink {
                    EnterEmailView()
                } label: {
                    Text("새 계정 만들기")
                        .fontWeight(.bold)
                        .frame(maxWidth: 363, maxHeight: 42)
                        .overlay {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.blue, lineWidth: 1)
                        }
                }
            }
        }
        
    }
}

#Preview {
    LoginView()
}

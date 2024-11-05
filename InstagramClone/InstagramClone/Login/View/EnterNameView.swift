//
//  EnterNameView.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/21/24.
//

import SwiftUI

struct EnterNameView: View {
    var body: some View {
        SignUpBackgroundView {
            VStack {
                Text("이름 입력")
                    .foregroundStyle(.black)
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 5)
                TextField("이름", text: .constant(""))
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
    EnterNameView()
}

//
//  ProfileEditingView.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 11/16/24.
//

import SwiftUI

struct ProfileEditingView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Image("profile_panda")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            Text("사진 또는 아바타 수정")
                .foregroundStyle(.tint)
            VStack(alignment: .leading, spacing: 5) {
                Text("이름")
                    .foregroundStyle(.gray)
                    .fontWeight(.bold)
                TextField("이름", text: .constant("Jun"))
                    .font(.title2)
                Divider()
                    .padding(.top, 10)
            }
            .padding(.horizontal)
            .padding(.top, 10)
            VStack(alignment: .leading, spacing: 5) {
                Text("사용자 이름")
                    .foregroundStyle(.gray)
                    .fontWeight(.bold)
                TextField("사용자 이름", text: .constant("junnkyuu22"))
                    .font(.title2)
                Divider()
                    .padding(.top, 10)
            }
            .padding(.horizontal)
            VStack(alignment: .leading, spacing: 5) {
                Text("소개")
                    .foregroundStyle(.gray)
                    .fontWeight(.bold)
                TextField("이름", text: .constant("판다가 세상을 구한다."))
                    .font(.title2)
                Divider()
                    .padding(.top, 10)
            }
            .padding(.horizontal)
            Spacer()
        }
        .navigationTitle("프로필 편집")
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.backward")
                        .tint(.black)
                }

            }
        }
    }
}

#Preview {
    ProfileEditingView()
}

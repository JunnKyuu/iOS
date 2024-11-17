//
//  ProfileEditingView.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 11/16/24.
//

import SwiftUI
import PhotosUI
import Kingfisher

struct ProfileEditingView: View {
    @Environment(\.dismiss) var dismiss
    @Bindable var viewModel: ProfileViewModel
    
    var body: some View {
        VStack {
            PhotosPicker(selection: $viewModel.selectedItem) {
                VStack {
                    if let profileImage = viewModel.profileImage {
                        profileImage
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                    } else if let imageUrl = viewModel.user?.profileImageUrl {
                        let url = URL(string: imageUrl)
//                            AsyncImage(url: url) { image in
//                                image
//                                    .resizable()
//                                    .frame(width: 100, height: 100)
//                                    .clipShape(Circle())
//                            } placeholder: {
//                                ProgressView()
//                            }
                        KFImage(url)
                            .resizable()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                    } else {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .foregroundStyle(.gray)
                            .opacity(0.5)
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                    }
                    Text("사진 또는 아바타 수정")
                        .foregroundStyle(.tint)
                }
            }
            .onChange(of: viewModel.selectedItem) { oldValue, newValue in
                Task {
                    await viewModel.convertImage(item: newValue)
                }
            }
            VStack(alignment: .leading, spacing: 5) {
                Text("이름")
                    .foregroundStyle(.gray)
                    .fontWeight(.bold)
                TextField("이름", text: $viewModel.name)
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
                TextField("사용자 이름", text: $viewModel.username)
                    .font(.title2)
                Divider()
                    .padding(.top, 10)
            }
            .padding(.horizontal)
            VStack(alignment: .leading, spacing: 5) {
                Text("소개")
                    .foregroundStyle(.gray)
                    .fontWeight(.bold)
                TextField("소개를 적어주세요.", text: $viewModel.bio)
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
                    Task {
                        await viewModel.updateUser()
                        dismiss()
                    }
                } label: {
                    Image(systemName: "arrow.backward")
                        .tint(.black)
                }

            }
        }
    }
}

#Preview {
    ProfileEditingView(viewModel: ProfileViewModel())
}

//
//  ProfileVIew.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 11/16/24.
//

import SwiftUI
import Kingfisher

struct ProfileView: View {
    @State var viewModel: ProfileViewModel = ProfileViewModel()

    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("\(viewModel.username)")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    HStack {
                        if let profileImage = viewModel.profileImage {
                            profileImage
                                .resizable()
                                .frame(width: 100, height: 100)
                                .clipShape(Circle())
                        } else if let imageUrl = viewModel.user?.profileImageUrl {
                            let url = URL(string: imageUrl)
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
                        VStack {
                            Text("124")
                                .fontWeight(.semibold)
                            Text("게시물")
                        }
                        .frame(maxWidth: .infinity)
                        VStack {
                            Text("999")
                                .fontWeight(.semibold)
                            Text("팔로워")
                        }
                        .frame(maxWidth: .infinity)
                        VStack {
                            Text("1403")
                                .fontWeight(.semibold)
                            Text("팔로잉")
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 10)
                    Text("\(viewModel.name)")
                        .font(.callout)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    Text("\(viewModel.bio)")
                        .font(.callout)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    NavigationLink {
                        ProfileEditingView(viewModel: viewModel)
                    } label: {
                        Text("프로필 편집")
                            .fontWeight(.bold)
                            .foregroundStyle(.black)
                            .frame(maxWidth: .infinity)
                            .frame(height: 35)
                            .background(.gray.opacity(0.2))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .padding(.horizontal, 10)
                            .padding(.top, 20)
                    }
                    Divider()
                        .padding()
                    LazyVGrid(columns: columns, spacing: 2) {
                        ForEach(viewModel.posts) { post in
                            let url: URL = URL(string: post.imageURL)!
                            KFImage(url)
                                .resizable()
                                .aspectRatio(1, contentMode: .fill)
                        }
                    }
                    .task {
                        await viewModel.loadUserPosts()
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}

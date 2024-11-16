//
//  ProfileVIew.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 11/16/24.
//

import SwiftUI

struct ProfileView: View {
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
        GridItem(.flexible(), spacing: 2),
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("junnkyuu22")
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                    HStack {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 75, height: 75)
                            .opacity(0.6)
                            .frame(maxWidth: .infinity)
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
                    Text("여기는 이름(name)을 쓰는 곳입니다.")
                        .font(.callout)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    Text("여기는 소개(bio)를 쓰는 곳입니다.")
                        .font(.callout)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    NavigationLink {
                        ProfileEditingView()
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
                        ForEach(0..<10) { _ in
                            Image("image_dog")
                                .resizable()
                                .scaledToFit()
                            Image("image_dragon")
                                .resizable()
                                .scaledToFit()
                            Image("image_lion")
                                .resizable()
                                .scaledToFit()
                            Image("image_penguin")
                                .resizable()
                                .scaledToFit()
                        }
                    }
                }
            }
        }
        Spacer()
    }
}

#Preview {
    ProfileView()
}

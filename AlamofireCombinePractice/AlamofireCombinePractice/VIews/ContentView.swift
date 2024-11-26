//
//  ContentView.swift
//  AlamofireCombinePractice
//
//  Created by JunKyu Lee on 11/24/24.
//

import SwiftUI

struct ContentView: View {
    @State var viewModel: PostViewModel = PostViewModel()
    
    var body: some View {
        List(viewModel.posts) { post in
            VStack(alignment: .leading, spacing: 10) {
                Text(post.title)
                    .font(.title)
                Text(post.body)
            }
        }
        .listStyle(PlainListStyle())
        .onAppear {
            viewModel.fetchPosts()
        }
    }
}

#Preview {
    ContentView()
}

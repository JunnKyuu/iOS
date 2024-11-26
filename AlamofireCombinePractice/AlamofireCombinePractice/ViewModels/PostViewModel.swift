//
//  PostViewModel.swift
//  AlamofireCombinePractice
//
//  Created by JunKyu Lee on 11/24/24.
//

import Foundation
import Combine

@Observable
class PostViewModel {
    var posts: [Post] = []
    
    private var cancellables = Set<AnyCancellable>()
    
    func fetchPosts() {
        NetworkManager.shared.fetchPosts()
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .finished:
                    break
                case .failure(let error):
                    print("DEBUG: Failed to fetch posts with error \(error.localizedDescription)")
                }
            } receiveValue: { posts in
                self.posts = posts
            }
            .store(in: &cancellables)
    }
}

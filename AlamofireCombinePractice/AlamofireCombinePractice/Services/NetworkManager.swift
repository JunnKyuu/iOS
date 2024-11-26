//
//  NetworkManager.swift
//  AlamofireCombinePractice
//
//  Created by JunKyu Lee on 11/24/24.
//

import Foundation
import Alamofire
import Combine

class NetworkManager {
    static let shared: NetworkManager = NetworkManager()
    
    private init() {}
    
    func fetchPosts() -> AnyPublisher<[Post], AFError> {
        let url: URL = URL(string: "https://jsonplaceholder.typicode.com/posts")!
        return AF.request(url, method: .get)
            .validate()
            .publishDecodable(type: [Post].self)
            .value()
            .eraseToAnyPublisher()
    }
}

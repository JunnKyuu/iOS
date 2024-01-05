//
//  Episode.swift
//  DataFlow-SwiftUI
//
//  Created by JunKyu Lee on 1/4/24.
//

import Foundation

struct Episode {
    let title: String
    let singer: String
    let duartion: TimeInterval
}

extension Episode {
    static let list: [Episode] = [
        Episode(title: "아이와 나의 바다", singer: "아이유", duartion: 300),
        Episode(title: "정거장", singer: "아이유", duartion: 400)
    ]
}

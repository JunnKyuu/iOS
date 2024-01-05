//
//  PlayerView.swift
//  DataFlow-SwiftUI
//
//  Created by JunKyu Lee on 1/4/24.
//

import SwiftUI

struct PlayerView: View {
    let episode: Episode
    @State private var isPlaying: Bool = false
    
    var body: some View {
        Text(episode.title)
            .font(.system(size: 40, weight: .bold, design: .default))
        Text(episode.singer)
            .font(.system(size: 30, weight: .light, design: .default))
        PlayButton(isPlaying: $isPlaying)
    }
}

#Preview {
    PlayerView(episode: Episode.list[0])
}

//
//  BannerCard.swift
//  MyAssets
//
//  Created by JunKyu Lee on 2/8/24.
//

import SwiftUI

struct BannerCard: View {
    let banner: AssetBanner
    
    var body: some View {
        ZStack {
            Color(banner.background)
            VStack {
                Text(banner.title)
                    .font(.title)
                Text(banner.description)
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    BannerCard(banner: AssetBanner(title: "공지사항", description: "추가된 공지사항을 확인하세요", background: .cyan))
}

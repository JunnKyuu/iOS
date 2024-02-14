//
//  AssetBannerView.swift
//  MyAssets
//
//  Created by JunKyu Lee on 2/14/24.
//

import SwiftUI

struct AssetBannerView: View {
    let bannerList: [AssetBanner] = [
        AssetBanner(title: "공지사항", description: "추가된 공지사항을 참고하세요", background: .red),
        AssetBanner(title: "주말 이벤트", description: "주말 이벤트 놓치지 마세요", background: .orange),
        AssetBanner(title: "깜짝 이벤트", description: "엄청난 이벤트에 놀라지 마세요", background: .yellow),
        AssetBanner(title: "겨울 프로모션", description: "겨울 프로모션!", background: .green)
    ]
    
    @State private var currentPage = 0
    
    var body: some View {
        let bannerCards = bannerList.map {
            BannerCard(banner: $0)
        }
        
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: bannerCards, currentPage: $currentPage)
            PageControl(numberOfPages: bannerList.count, currentPage: $currentPage)
                .frame(width: CGFloat(bannerCards.count * 18))
                .padding(.trailing)
            
        }
    }
}

#Preview {
    AssetBannerView()
        .aspectRatio(5/2, contentMode: .fit)
}

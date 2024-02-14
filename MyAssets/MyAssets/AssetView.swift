//
//  AssetView.swift
//  MyAssets
//
//  Created by JunKyu Lee on 1/24/24.
//

import SwiftUI

struct AssetView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 30) {
                    Spacer()
                    AssetMenuGridView()
                    AssetBannerView()
                        .aspectRatio(contentMode: .fit)
                }
            }
            .navigationBarWithButton("내 자산")
        }
    }
}

#Preview {
    AssetView()
}

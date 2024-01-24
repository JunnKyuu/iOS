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
                }
            }
            .background(Color.gray.opacity(0.2))
            .navigationBarWithButton("내 자산")
        }
    }
}

#Preview {
    AssetView()
}

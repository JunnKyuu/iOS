//
//  AssetMenuGridView.swift
//  MyAssets
//
//  Created by JunKyu Lee on 1/24/24.
//

import SwiftUI

struct AssetMenuGridView: View {
    let menuList: [[AssetMenu]] = [
        [.creditScore, .account, .investment, .loan],
        [.insurance, .creditCard, .cash, .realEstate]
    ]
    
    var body: some View {
        VStack {
            ForEach(menuList, id: \.self) { row in
                HStack(spacing: 20) {
                    ForEach(row) { menu in
                        Button("") {
                            print("\(menu.title) Tapped!!")
                        }
                        .buttonStyle(AssetMenuButtonStyle(menu: menu))
                    }
                }
            }
        }
    }
}

#Preview {
    AssetMenuGridView()
}

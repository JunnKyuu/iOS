//
//  StockRankView.swift
//  StockRank-SwiftUI
//
//  Created by JunKyu Lee on 1/6/24.
//

import SwiftUI

struct StockRankView: View {
    @State var list = StockModel.list
    
    var body: some View {
        List(list) { item in
            StockRankRow(stock: item)
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .frame(height: 80)
                .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .background(.black)
    }
}

#Preview {
    StockRankView()
}

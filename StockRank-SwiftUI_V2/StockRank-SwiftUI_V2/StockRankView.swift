//
//  StockRankView.swift
//  StockRank-SwiftUI_V2
//
//  Created by JunKyu Lee on 1/11/24.
//

import SwiftUI

struct StockRankView: View {
    @StateObject var vm = StockRankViewModel()
    
    var body: some View {
        NavigationView {
            List($vm.models) { $item in
                ZStack {
                    NavigationLink {
                        StockDetailView(viewModel: vm, stock: $item)
                    } label: {
                        EmptyView()
                    }
                    StockRankRow(stockModel: $item)
                }
                .listRowSeparator(.hidden)
                .listRowInsets(EdgeInsets())
                .frame(height: 80)
            }
            .listStyle(.plain)
            .navigationTitle("📈 Stock Rank")
        }
    }
}

#Preview {
    StockRankView()
        .preferredColorScheme(.dark)
}

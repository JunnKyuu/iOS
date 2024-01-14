//
//  StockDetailView.swift
//  StockRank-SwiftUI_V2
//
//  Created by JunKyu Lee on 1/11/24.
//

import SwiftUI

struct StockDetailView: View {
    @ObservedObject var viewModel: StockRankViewModel
    @Binding var stock: StockModel
    
    var body: some View {
        VStack(spacing: 40) {
            Text("# of My Favorites: \(viewModel.numOfFavorites)")
                .font(.system(size: 20, weight: .bold, design: .default))
                .foregroundColor(.white)
            Image(stock.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
            Text(stock.name)
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.white)
            Text("\(stock.price) 원")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(stock.diff > 0 ? .red : .blue)
            Button(action: {
                stock.isFavorite.toggle()
            }, label: {
                Image(systemName: "heart.fill")
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
                    .foregroundColor(stock.isFavorite ? .pink : .white)
            })
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

#Preview {
    StockDetailView(viewModel: StockRankViewModel(),
                        stock: .constant(StockModel.list[0]))
}

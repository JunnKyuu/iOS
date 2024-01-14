//
//  StockRankRow.swift
//  StockRank-SwiftUI_V2
//
//  Created by JunKyu Lee on 1/11/24.
//

import SwiftUI

struct StockRankRow: View {
   @Binding var stockModel: StockModel
    
    var body: some View {
        HStack {
            Text("\(stockModel.rank)")
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.blue)
                .padding([.leading], 20)
            Image(stockModel.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 40)
                .padding([.leading], 20)
            VStack(alignment: .leading) {
                Text(stockModel.name)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundColor(.white)
                HStack {
                    Text("\(stockModel.price)")
                        .font(.system(size: 15, weight: .medium))
                        .foregroundColor(.gray)
                    Text("\(stockModel.diff * 100, specifier: "%.2f")%")
                        .font(.system(size: 15, weight: .medium))
                        .foregroundColor(stockModel.diff > 0 ? .red : .blue)
                }
            }
            .padding([.leading], 10)
            Spacer()
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .foregroundColor(stockModel.isFavorite ? .pink : .white)
                .padding([.trailing], 20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

#Preview {
    StockRankRow(stockModel: .constant(StockModel.list[0]))
}

//
//  StackRankRow.swift
//  StockRank-SwiftUI
//
//  Created by JunKyu Lee on 1/6/24.
//

import SwiftUI

struct StockRankRow: View {
    var stock: StockModel
    
    var body: some View {
        HStack {
            Text("\(stock.rank)")
                .font(.system(size: 16, weight: .bold, design: .default))
                .frame(width: 30)
                .foregroundColor(.blue)
            Image("\(stock.imageName)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40,  height: 40)
            VStack(alignment: .leading, spacing: 5){
                Text("\(stock.name)")
                    .font(.system(size: 12, weight: .bold, design: .default))
                    .foregroundColor(.white)
                HStack {
                    Text("\(stock.price)원")
                        .font(.system(size: 12, weight: .medium, design: .default))
                        .foregroundColor(.gray)
                    Text("\(stock.diff * 100, specifier: "%.2f")%")
                        .font(.system(size: 12, weight: .medium, design: .default))
                        .foregroundColor(stock.diff > 0 ? .red : .blue)
                }
            }
            Spacer()
            Image(systemName: "heart.fill")
                .resizable()
                .renderingMode(.template)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .foregroundColor(.gray)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .background(.black)
    }
}

#Preview {
    StockRankRow(stock: StockModel.list[0])
}

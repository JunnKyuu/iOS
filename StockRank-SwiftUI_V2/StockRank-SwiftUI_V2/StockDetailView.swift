//
//  StockDetailView.swift
//  StockRank-SwiftUI_V2
//
//  Created by JunKyu Lee on 1/11/24.
//

import SwiftUI

struct StockDetailView: View {
    @Binding var stock: StockModel
    
    var body: some View {
        VStack {
            Image(stock.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
                .padding([.bottom], 30)
            Text(stock.name)
                .font(.system(size: 30, weight: .bold))
                .foregroundColor(.white)
                .padding([.bottom], 10)
            Text("\(stock.price) 원")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(stock.diff > 0 ? .red : .blue)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
    }
}

#Preview {
    StockDetailView(stock: .constant(StockModel.list[0]))
}

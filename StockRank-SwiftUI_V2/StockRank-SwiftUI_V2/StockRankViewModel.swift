//
//  StockRankViewModel.swift
//  StockRank-SwiftUI_V2
//
//  Created by JunKyu Lee on 1/12/24.
//

import Foundation

final class StockRankViewModel: ObservableObject {
    @Published var models: [StockModel] = StockModel.list
    
    var numOfFavorites: Int {
        return models.filter({ $0.isFavorite }).count
    }
}

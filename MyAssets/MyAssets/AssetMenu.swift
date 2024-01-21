//
//  AssetMenu.swift
//  MyAssets
//
//  Created by JunKyu Lee on 1/21/24.
//

import Foundation

enum AssetMenu: String, Identifiable, Decodable {
    case creditScore
    case account
    case investment
    case loan
    case insurance
    case creditCard
    case cash
    case realEstate
    
    var id: String {
        return self.rawValue
    }
}

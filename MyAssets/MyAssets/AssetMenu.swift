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
    
    var systemImageName: String {
        switch self {
        case .creditScore:
            return "number.circle"
        case .account:
            return "banknote"
        case .investment:
            return "bitcoinsign.circle"
        case .loan:
            return "hand.wave"
        case .insurance:
            return "lock.shield"
        case .creditCard:
            return "creditcard"
        case .cash:
            return "dollarsign.circle"
        case .realEstate:
            return "house.fill"
        }
    }
    
    var title: String {
        switch self {
        case .creditScore:
            return "신용점수"
        case .account:
            return "계좌"
        case .investment:
            return "투지"
        case .loan:
            return "대출"
        case .insurance:
            return "보험"
        case .creditCard:
            return "카드"
        case .cash:
            return "현금"
        case .realEstate:
            return "부동산"
        }
    }
}

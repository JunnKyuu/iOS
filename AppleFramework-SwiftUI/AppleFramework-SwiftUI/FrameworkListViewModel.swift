//
//  FrameworkListViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by JunKyu Lee on 1/19/24.
//

import Foundation

final class FrameworkListViewModel: ObservableObject {
    @Published var models: [AppleFramework] = AppleFramework.list
    @Published var isShowingDetail: Bool = false 
    @Published var selectedItem: AppleFramework?
}

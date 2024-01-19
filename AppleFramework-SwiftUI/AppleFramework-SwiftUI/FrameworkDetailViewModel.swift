//
//  FrameworkDetailViewModel.swift
//  AppleFramework-SwiftUI
//
//  Created by JunKyu Lee on 1/19/24.
//

import Foundation
import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    @Published var framework: AppleFramework
    @Published var isSafariPresented: Bool = false
    
    init(framework: AppleFramework) {
        self.framework = framework
    }
}

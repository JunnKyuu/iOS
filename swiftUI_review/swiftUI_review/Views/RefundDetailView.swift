//
//  RefindDetailView.swift
//  swiftUI_review
//
//  Created by JunKyu Lee on 3/8/24.
//

import SwiftUI

struct RefundDetailView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button(action: {
            dismiss()
        }, label: {
            Text("뒤로가기")
        })
    }
}

#Preview {
    RefundDetailView()
}

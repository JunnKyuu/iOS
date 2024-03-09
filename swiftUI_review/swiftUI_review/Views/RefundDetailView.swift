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
            Text("홈으로 돌아가기")
                .font(.system(size: 18, weight: .bold, design: .default))
                .foregroundColor(Color(hex: "#000000"))
        })
        .padding()
        .background(Color(hex: "#dddddd"))
        .cornerRadius(10)
    }
}

#Preview {
    RefundDetailView()
}

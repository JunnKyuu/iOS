//
//  SignUpBackgroundView.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/31/24.
//

import SwiftUI

struct SignUpBackgroundView <Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        @Environment(\.dismiss) var dismiss
        ZStack {
            GradientBackgroundView()
            content
            .padding(.horizontal)
        }
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .tint(.primary)
                }
            }
        }
    }
}

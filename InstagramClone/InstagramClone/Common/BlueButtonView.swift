//
//  BlueButtonView.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 11/1/24.
//

import SwiftUI

struct BlueButtonView <Content: View>: View {
    let content: Content
    let action: () -> Void
    
    init(action: @escaping () -> Void, @ViewBuilder content: () -> Content) {
        self.action = action
        self.content = content()
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            content
                .frame(maxWidth: .infinity, maxHeight: 42)
                .foregroundStyle(.white)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
        }

    }
}

//
//  CompleteSignUpView.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/22/24.
//

import SwiftUI

struct CompleteSignUpView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack {
            GradientBackgroundView()
            VStack {
                Text("Complete SignUP View")
            }
        }
    }
}

#Preview {
    CompleteSignUpView()
}

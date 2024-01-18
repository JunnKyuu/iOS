//
//  SecondView.swift
//  EnvironmentObjTest
//
//  Created by JunKyu Lee on 1/16/24.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack(spacing: 30) {
            NavigationLink {
                ThirdView()
            } label: {
                Text("Third View")
                    .font(.system(size: 20, weight: .bold))
            }
        }
        .navigationTitle("Second View")
    }
}

#Preview {
    SecondView()
}

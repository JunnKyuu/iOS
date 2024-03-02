//
//  MoreView.swift
//  swiftUI_review
//
//  Created by JunKyu Lee on 3/2/24.
//

import SwiftUI

struct MoreView: View {
    var body: some View {
        ScrollView {
            VStack {
                // header
                HStack {
                    Text("더보기")
                        .font(.system(size: 22, weight: .bold, design: .default))
                    Spacer()
                    Image(systemName: "gearshape.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(hex: "#7d7d7d"))
                }
            }
            .padding()
        }
    }
}

#Preview {
    MoreView()
}

//
//  YearEndVIew.swift
//  swiftUI_review
//
//  Created by JunKyu Lee on 2/14/24.
//

import SwiftUI

struct YearEndVIew: View {
    var body: some View {
        VStack {
//            연말정산 확인하기
            VStack(spacing: 30) {
                HStack(spacing: 10) {
                    VStack(alignment: .leading, spacing: 10) {
                        Text("내 연말정산 환급액은 얼마?")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(Color.white)
                        Text("13월의 월급 확인하기")
                            .font(.system(size: 15, weight: .light, design: .default))
                            .foregroundColor(Color.gray)

                    }
                    Spacer()
                    Image(systemName: "calendar")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                        .foregroundColor(Color.white)
                }
                .padding(20)
                .frame(maxWidth: .infinity)
                Button(action: {
                    print("Button Tapped!")
                }, label: {
                    Text("내 연말정산 확인하기")
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(Color.white)
                })
                .frame(maxWidth: .infinity)
                .padding(20)
                .background(Color.blue)
                .cornerRadius(10)
            }
            .padding(20)
            .background(Color.black)
        }
        .cornerRadius(10)
        .padding(20)
    }
}

#Preview {
    YearEndVIew()
}

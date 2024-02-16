//
//  YearEndVIew.swift
//  swiftUI_review
//
//  Created by JunKyu Lee on 2/14/24.
//

import SwiftUI

struct YearEndVIew: View {
    var body: some View {
        VStack(spacing: 10) {
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
                .padding(5)
                .frame(maxWidth: .infinity)
                Button(action: {
                    print("Button Tapped!")
                }, label: {
                    Text("내 연말정산 확인하기")
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .foregroundColor(Color.white)
                })
                .frame(maxWidth: .infinity)
                .padding(15)
                .background(Color.blue)
                .cornerRadius(10)
            }
            .padding(20)
            .background(Color(hex: "#010240"))
            .cornerRadius(10)
//            연말정산 서류 간편 발금
            VStack {
                HStack(spacing: 30) {
                    VStack(alignment: .leading) {
                        Text("연말정산 서류 간편 발급")
                            .font(.system(size: 18, weight: .bold, design: .default))
                            .foregroundColor(.white)
                        Text("3분만에 자료 보내기")
                            .font(.system(size: 15, weight: .light, design: .default))
                            .foregroundColor(Color(hex: "#B0BFFF"))
                    }
                    Spacer()
                    Image(systemName: "paperplane.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color(hex: "#FFFFFF"))
                }
                .padding(20)
            }
            .frame(maxWidth: .infinity)
            .background(Color(hex: "#1C46B5"))
            .cornerRadius(10)
        }
        .cornerRadius(10)
        .padding(20)
    }
}

// hex color extension
extension Color {
    init(hex: String) {
        var cleanHexCode = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        cleanHexCode = cleanHexCode.replacingOccurrences(of: "#", with: "")
        print(cleanHexCode)
        var rgb: UInt64 = 0
        
        Scanner(string: cleanHexCode).scanHexInt64(&rgb)
        
        let redValue = Double((rgb >> 16) & 0xFF) / 255.0
        let greenValue = Double((rgb >> 8) & 0xFF) / 255.0
        let blueValue = Double(rgb & 0xFF) / 255.0
        self.init(red: redValue, green: greenValue, blue: blueValue)
    }
}

#Preview {
    YearEndVIew()
}

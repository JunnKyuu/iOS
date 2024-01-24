//
//  AssetMenuButtonStyle.swift
//  MyAssets
//
//  Created by JunKyu Lee on 1/24/24.
//

import SwiftUI

struct AssetMenuButtonStyle: ButtonStyle {
    let menu: AssetMenu
    
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            Image(systemName: menu.systemImageName)
                .resizable()
                .frame(width: 30, height: 30)
                .padding([.leading, .trailing], 10)
            Text(menu.title)
                .font(.system(size: 12, weight: .bold))
        }
        .padding()
        .foregroundColor(.blue)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    HStack(spacing: 24) {
        Button("") {
            print("")
        }
        .buttonStyle(AssetMenuButtonStyle(menu: .creditScore))
        
        Button("") {
            print("")
        }
        .buttonStyle(AssetMenuButtonStyle(menu: .account))
        
        Button("") {
            print("")
        }
        .buttonStyle(AssetMenuButtonStyle(menu: .creditCard))
        
        Button("") {
            print("")
        }
        .buttonStyle(AssetMenuButtonStyle(menu: .cash))
    }
    .background(Color.gray.opacity(0.2))
}

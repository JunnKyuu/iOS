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
                .frame(width: 23, height: 23)
                .padding([.leading, .trailing], 10)
            Text(menu.title)
                .font(.system(size: 13, weight: .bold))
        }
        .padding(13)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black))
        .background(Color.white)
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

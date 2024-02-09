//
//  NavigationBarWithButton.swift
//  MyAssets
//
//  Created by JunKyu Lee on 1/21/24.
//

import SwiftUI

struct NavigationBarWithButtonStyle: ViewModifier {
    var title: String = ""
    
    func body(content: Content) -> some View {
        return content
            .navigationBarItems(
                leading: Text(title)
                    .font(.system(size: 24, weight: .bold)),
                trailing: Button(
                    action: {
                        print("Button Tapped!")
                    },
                    label: {
                        Image(systemName: "plus")
                        Text("자산추가")
                            .font(.system(size: 18))
                    }
                )
                .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8 ))
                .overlay(
                    RoundedRectangle(cornerRadius: 20).stroke(Color.black)
                )
            )
            .navigationBarTitleDisplayMode(.inline)
    }
}

extension View {
    func navigationBarWithButton(_ title: String) -> some View {
        return self.modifier(NavigationBarWithButtonStyle(title: title))
    }
}

#Preview {
    NavigationView {
        Color.white.edgesIgnoringSafeArea(.all)
            .navigationBarWithButton("내 자산")
    }
}

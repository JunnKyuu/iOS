//
//  NavigationBarWithButtonStyle.swift
//  swiftUI_review
//
//  Created by JunKyu Lee on 1/24/24.
//

import SwiftUI

struct NavigationBarWithButtonStyle: ViewModifier {
    var title: String = ""
    
    func body(content: Content) -> some View {
        return content
            .navigationBarItems(
                leading: Text(title)
                    .font(.system(size: 30, weight: .bold))
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)),
                trailing: Button(action: {
                    print("Button Tapped!")
                }, label: {
                    Image(systemName: "bell.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 35, height: 35)
                })
                .accentColor(.black)
                .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
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
        Color.blue
            .navigationBarWithButton("삼쩜삼")
    }
}

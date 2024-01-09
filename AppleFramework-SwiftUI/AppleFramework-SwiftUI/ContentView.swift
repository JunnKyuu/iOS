//
//  ContentView.swift
//  AppleFramework-SwiftUI
//
//  Created by JunKyu Lee on 1/6/24.
//

import SwiftUI

struct ContentView: View {
    @State var list: [AppleFramework] = AppleFramework.list
    
    let columns = [
        GridItem(.flexible(minimum: 120, maximum: 120)),
        GridItem(.flexible(minimum: 120, maximum: 120)),
        GridItem(.flexible(minimum: 120, maximum: 120))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(list, id: \.self) { item in
                        FrameworkCell(framework: item)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

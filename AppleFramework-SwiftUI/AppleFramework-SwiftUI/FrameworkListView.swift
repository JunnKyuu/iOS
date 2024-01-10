//
//  ContentView.swift
//  AppleFramework-SwiftUI
//
//  Created by JunKyu Lee on 1/6/24.
//

import SwiftUI

struct FrameworkListView: View {
    @State var list: [AppleFramework] = AppleFramework.list
    
    let layout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach(list, id: \.self) { item in
                            FrameworkCell(framework: item)
                    }
                }
                .padding([.top, .leading, .trailing], 16.0)
            }
        }
        .navigationTitle("Apple Framework")
    }
}

#Preview {
    FrameworkListView()
}

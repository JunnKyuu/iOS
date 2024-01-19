//
//  ContentView.swift
//  AppleFramework-SwiftUI
//
//  Created by JunKyu Lee on 1/6/24.
//

import SwiftUI

struct FrameworkListView: View {
    @StateObject var vm = FrameworkListViewModel()
    
    let layout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach($vm.models) { $item in
                            FrameworkCell(framework: $item)
                            .onTapGesture {
                                vm.isShowingDetail = true
                                vm.selectedItem = item
                            }
                    }
                }
                .padding([.top, .leading, .trailing], 16.0)
            }
            .navigationTitle("🍎Apple Framework")
        }
        .sheet(isPresented: $vm.isShowingDetail) {
            let vm = FrameworkDetailViewModel(framework: vm.selectedItem!)
            FrameworkDetailView(viewModel: vm)
        }
    }
}

#Preview {
    FrameworkListView()
}

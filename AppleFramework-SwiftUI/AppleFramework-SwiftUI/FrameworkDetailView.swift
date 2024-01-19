//
//  FrameworkDetailView.swift
//  AppleFramework-SwiftUI
//
//  Created by JunKyu Lee on 1/19/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    @StateObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack(spacing: 30) {
            Spacer()
            
            Image(viewModel.framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
                        
            Text(viewModel.framework.name)
                .font(.system(size: 24, weight: .bold))
            Text(viewModel.framework.description)
                .font(.system(size: 16, weight: .regular))
            
            Spacer()
            
            Button(action: {
                viewModel.isSafariPresented = true
            }, label: {
                    Text("Learn More")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(.white)
            })
            .frame(maxWidth: .infinity, minHeight: 80)
            .background(.blue)
            .cornerRadius(40)
        }
        .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
        .sheet(isPresented: $viewModel.isSafariPresented, content: {
            let url = URL(string: viewModel.framework.urlString)!
            SafariView(url: url)
        })
    }
}

#Preview {
    FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: AppleFramework.list[0]))
}

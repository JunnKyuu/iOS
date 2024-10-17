//
//  NewPostView.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/8/24.
//

import SwiftUI
import PhotosUI

struct NewPostView: View {
    @Binding var tabIndex: Int
    @State var viewModel: NewPostViewModel = NewPostViewModel()
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    tabIndex = 0
                } label: {
                    Image(systemName: "chevron.left")
                        .tint(.primary)
                }
                Spacer()
                Text("새 게시물")
                    .font(.title2)
                    .fontWeight(.semibold)
                Spacer()
            }
            .padding(.horizontal)
            
            PhotosPicker(selection: $viewModel.selectedItem) {
                if let image: Image = self.viewModel.postImage {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: 400)
                        .clipped()
                        .padding(.vertical)
                } else {
                    Image(systemName: "photo.on.rectangle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .padding()
                }
            }
            .onChange(of: viewModel.selectedItem) { oldValue, newValue in
                Task {
                    await viewModel.convertImage(item: newValue)
                }
            }
            
            TextField("문구를 작성하거나 설문을 추가하세요...", text: $viewModel.caption)
                .padding()
            Spacer()
            Button {
                print("내용: ", viewModel.caption)
                Task {
                    await viewModel.uploadPost()
                }
            } label: {
                Text("공유")
                    .frame(width: 363, height: 50)
                    .foregroundStyle(.white)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            .padding()
        }
    }
}

#Preview {
    NewPostView(tabIndex: .constant(3))
}

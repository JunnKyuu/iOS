//
//  NewPostView.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/8/24.
//

import SwiftUI
import PhotosUI

struct NewPostView: View {
    @State var caption: String = ""
    @Binding var tabIndex: Int
    @State var selectedItem: PhotosPickerItem?
    @State var postImage: Image?
    
    func convertImage(item: PhotosPickerItem?) async {
        guard let item: PhotosPickerItem = item else {return}
        guard let data: Data = try? await item.loadTransferable(type: Data.self) else {return}
        guard let uiImage: UIImage = UIImage(data: data) else {return}
        self.postImage = Image(uiImage: uiImage)
    }
    
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
            
            PhotosPicker(selection: $selectedItem) {
                if let image: Image = self.postImage {
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                        .padding(.vertical)
                } else {
                    Image(systemName: "photo.on.rectangle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .padding()
                }
            }
            .onChange(of: selectedItem) { oldValue, newValue in
                Task {
                    await convertImage(item: newValue)
                }
            }
            
            TextField("문구를 작성하거나 설문을 추가하세요...", text: $caption)
                .padding()
            Spacer()
            Button {
                print("내용: ", caption)
                print("공유 버튼 클릭")
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

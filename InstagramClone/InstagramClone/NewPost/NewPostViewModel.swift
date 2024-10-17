//
//  NewPostViewModel.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/16/24.
//

import SwiftUI
import PhotosUI
import FirebaseStorage
import FirebaseFirestore

@Observable
class NewPostViewModel {
    var caption: String = ""
    var selectedItem: PhotosPickerItem?
    var postImage: Image?
    var uiImage: UIImage?
    
    func convertImage(item: PhotosPickerItem?) async {
        guard let item: PhotosPickerItem = item else { return }
        guard let data: Data = try? await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage: UIImage = UIImage(data: data) else { return }
        self.postImage = Image(uiImage: uiImage)
        self.uiImage = uiImage
    }
    
    func uploadPost() async {
        guard let uiImage: UIImage = self.uiImage else { return }
        guard let imageURL: String = await uploadImage(uiImage: uiImage) else { return }
        
        let postReference: DocumentReference = Firestore.firestore().collection("posts").document()
        let post: Post = Post(id: postReference.documentID, caption: caption, imageURL: imageURL, like: 0, date: Date())
        
        do {
            let encodedData = try Firestore.Encoder().encode(post)
            try await postReference.setData(encodedData)
        } catch {
            print("DEBUG: Fail to upload post with error \(error.localizedDescription)")
        }
    }
    
    func uploadImage(uiImage: UIImage) async -> String? {
        // 이미지 데이터를 jpeg -> 파일 이름 생성 -> 저장할 경로 설정 -> 파일 업로드 및 메타데이터 저장 -> url 경로 다운
        guard let imageData: Data = uiImage.jpegData(compressionQuality: 0.5) else { return nil }
        let fileName: String = UUID().uuidString
        print("file name: ", fileName)
        
        let reference: StorageReference = Storage.storage().reference(withPath: "/images/\(fileName)")
        
        do {
            let metaData = try await reference.putDataAsync(imageData)
            print("metaData: ", metaData)
            let url: URL = try await reference.downloadURL()
            return url.absoluteString
        } catch {
            print("DEBUG: Fail to upload image with error \(error.localizedDescription)")
            return nil
        }
    }
    
    func clearData() {
        caption = ""
        selectedItem = nil
        postImage = nil
        uiImage = nil
    }
}

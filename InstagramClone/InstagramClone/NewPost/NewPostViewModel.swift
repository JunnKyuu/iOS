//
//  NewPostViewModel.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 10/16/24.
//

import SwiftUI
import PhotosUI
import FirebaseStorage

@Observable
class NewPostViewModel {
    var caption: String = ""
    var selectedItem: PhotosPickerItem?
    var postImage: Image?
    
    func convertImage(item: PhotosPickerItem?) async {
        guard let item: PhotosPickerItem = item else {return}
        guard let data: Data = try? await item.loadTransferable(type: Data.self) else {return}
        guard let uiImage: UIImage = UIImage(data: data) else {return}
        self.postImage = Image(uiImage: uiImage)
    }
    
    func uploadPost() {
       
//        uploadImage()
    }
    
//    func uploadImage(uiImage: UIImage) async -> String? {
//        guard let imageData: Data = uiImage.jpegData(compressionQuality: 0.5) else {return nil}
//        let fileName: String = UUID().uuidString
//        print("file name: ", fileName)
//        let reference: StorageReference = Storage.storage().reference(withPath: "/images/\(fileName)")
//
//        guard let metaData: StorageMetadata = try? await reference.putDataAsync(imageData) else {return nil}
//
//        return nil
//    }
    
    
    
    
    
    func uploadImage(uiImage: UIImage) -> String? {
        guard let imageData: Data = uiImage.jpegData(compressionQuality: 0.5) else {return nil}
        let fileName: String = UUID().uuidString
        print("file name : ", fileName)
        
        let reference: StorageReference = Storage.storage().reference(withPath: "/images/\(fileName)")
        
        return ""
    }
}

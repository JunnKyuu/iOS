//
//  ProfileViewModel.swift
//  InstagramClone
//
//  Created by JunKyu Lee on 11/16/24.
//

import SwiftUI
import Firebase
import PhotosUI
import FirebaseStorage

@Observable
class ProfileViewModel {
    var user: User?
    var name: String
    var username: String
    var bio: String
    var posts: [Post] = []
    
    var selectedItem: PhotosPickerItem?
    var profileImage: Image?
    var uiImage: UIImage?
    
    init() {
        let tempUser = AuthManager.shared.currentUser
        self.user = tempUser
        
        self.name = tempUser?.name ?? ""
        self.username = tempUser?.username ?? ""
        self.bio = tempUser?.bio ?? ""
    }
    
    func convertImage(item: PhotosPickerItem?) async {
        guard let item: PhotosPickerItem = item else { return }
        guard let data: Data = try? await item.loadTransferable(type: Data.self) else { return }
        guard let uiImage: UIImage = UIImage(data: data) else { return }
        self.profileImage = Image(uiImage: uiImage)
        self.uiImage = uiImage
    }
    
    func updateUser() async {
        do {
            try await updateUserRemote()
            updateUserLocal()
        } catch {
            print("DEBUG: Failure to update user with error \(error.localizedDescription)")
        }
    }
    
    func updateUserLocal() {
        if !name.isEmpty, user?.name != name {
            user?.name = name
        }
        if !username.isEmpty, user?.username != username {
            user?.username = username
        }
        if !bio.isEmpty, user?.bio != bio {
            user?.bio = bio
        }
    }
    
    func updateUserRemote() async throws {
        var editedData: [String : Any] = [:]
        
        if !name.isEmpty, user?.name != name {
            editedData["name"] = name
        }
        if !username.isEmpty, user?.username != username {
            editedData["username"] = username
        }
        if !bio.isEmpty, user?.bio != bio {
            editedData["bio"] = bio
        }
        
        if let uiImage = self.uiImage {
            let imageUrl: String? = await uploadImage(uiImage: uiImage)
            editedData["profileImageUrl"] = imageUrl
        }
        
        if !editedData.isEmpty, let userId = user?.userId {
            try await Firestore.firestore().collection("users").document(userId).updateData(editedData)
        }
    }
    
    func uploadImage(uiImage: UIImage) async -> String? {
        guard let imageData: Data = uiImage.jpegData(compressionQuality: 0.5) else { return nil }
        let fileName: String = UUID().uuidString
        print("file name: ", fileName)
        
        let reference: StorageReference = Storage.storage().reference(withPath: "/profile/\(fileName)")
        
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
    
    func loadUserPosts() async {
        do {
            let documents = try await Firestore.firestore().collection("posts").order(by: "date", descending: true)
                .whereField("userId", isEqualTo: user?.userId ?? " ").getDocuments().documents
            for document in documents {
                let post = try document.data(as: Post.self)
                posts.append(post)
            }
            self.posts = posts
        } catch {
            print("DEBUG: Failed to load user posts with error \(error.localizedDescription)")
        }
    }
}

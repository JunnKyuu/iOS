//
//  DogImageScrollView.swift
//  PetInformationApp
//
//  Created by JunKyu Lee on 9/23/24.
//

import SwiftUI

struct DogImageScrollView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                DogImageView(imageName: "dog1")
                DogImageView(imageName: "dog2")
                DogImageView(imageName: "dog3")
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.yellow)
                    .opacity(0.2)
                    .shadow(radius: 5)
            )
        }
        .scrollIndicators(.hidden)
    }
}

struct DogImageView: View {
    var imageName: String = ""
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 160, height: 160)
            .overlay(Rectangle().stroke(Color.blue, lineWidth: 4))
    }
}

#Preview {
    DogImageScrollView()
}

//
//  ContentView.swift
//  PetInformationApp
//
//  Created by JunKyu Lee on 9/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            DogProfileView()
            DogLikesView()
            DogSkillsView()
            DogImageScrollView()
        }
        .padding()
    }
}
#Preview {
    ContentView()
}

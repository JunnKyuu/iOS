//
//  ContentView.swift
//  EnvironmentObjTest
//
//  Created by JunKyu Lee on 1/16/24.
//

import SwiftUI

struct FirstView: View {
    @EnvironmentObject var userProfile: UserProfileSettings
    
    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("Current Age: \(userProfile.age)")
                NavigationLink {
                    SecondView()
                } label: {
                    Text("Second View")
                        .font(.system(size: 20, weight: .bold))
                }
                Button {
                    userProfile.haveBirthDayParty()
                } label: {
                    Text("Having Birthday Party")
                }
            }
            .navigationTitle("First View")
        }
    }
}

#Preview {
    FirstView().environmentObject(UserProfileSettings())
}

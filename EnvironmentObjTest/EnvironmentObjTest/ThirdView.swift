//
//  ThirdView.swift
//  EnvironmentObjTest
//
//  Created by JunKyu Lee on 1/16/24.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var userProfile: UserProfileSettings
    
    var body: some View {
        VStack(spacing: 30) {
            Text("Current Age: \(userProfile.age)")
            Text("Third View")
            Button {
                userProfile.haveBirthDayParty()
            } label: {
                Text("Having Birthday Party")
                    .font(.system(size: 20, weight: .bold))
            }
        }
        .navigationTitle("Third View")
    }
}

#Preview {
    ThirdView().environmentObject(UserProfileSettings())
}

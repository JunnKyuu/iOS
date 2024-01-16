//
//  EnvironmentObjTestApp.swift
//  EnvironmentObjTest
//
//  Created by JunKyu Lee on 1/16/24.
//

import SwiftUI

@main
struct EnvironmentObjTestApp: App {
    @StateObject var userProfile = UserProfileSettings()
    
    var body: some Scene {
        WindowGroup {
            FirstView().environmentObject(userProfile)
        }
    }
}

//
//  UserProfileSettings.swift
//  EnvironmentObjTest
//
//  Created by JunKyu Lee on 1/16/24.
//

import Foundation

final class UserProfileSettings: ObservableObject {
    @Published var nams: String = ""
    @Published var age: Int = 0
    
    func haveBirthDayParty() {
        age += 1
    }
}

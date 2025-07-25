//
//  RegistrationViewModel.swift
//  Threads
//
//  Created by Marcos Roberto Lemos Veloso on 24/07/25.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var fullName: String = ""
    @Published var username: String = ""
    @Published var password: String = ""

    @MainActor
    func createUser() async throws {
        print("DEBUG: Creating user...")
        try await AuthService.shared.createUser(
            withEmail: email,
            password: password,
            fullname: fullName,
            username: username
        )
    }
}

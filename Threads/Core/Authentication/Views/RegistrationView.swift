//
//  RegistrationView.swift
//  Threads
//
//  Created by Marcos Roberto Lemos Veloso on 01/07/25.
//

import SwiftUI

struct RegistrationView: View {
    @StateObject var viewModel = RegistrationViewModel()
    @Environment(\.dismiss) var dismiss  // to go back to previous screen

    var body: some View {
        VStack {
            Spacer()

            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()

            VStack {
                TextField("Enter your email", text: $viewModel.email)
                    .modifier(TextFieldModifier())
                    .textInputAutocapitalization(.never)

                SecureField("Enter your password", text: $viewModel.password)
                    .modifier(TextFieldModifier())

                TextField("Enter your full name", text: $viewModel.fullName)
                    .modifier(TextFieldModifier())
                    .textInputAutocapitalization(.never)

                TextField("Enter your username", text: $viewModel.username)
                    .modifier(TextFieldModifier())
                    .textInputAutocapitalization(.never)
            }

            Button {
                Task { try await viewModel.createUser() }
            } label: {
                Text("Sign Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 352, height: 44)
                    .background(.black)
                    .cornerRadius(8)
            }
            .padding(.vertical)

            Spacer()

            Divider()

            Button {
                dismiss()
            } label: {
                HStack(spacing: 4) {
                    Text("Already have an account?")
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
                .font(.footnote)
                .foregroundStyle(.black)
            }
            .padding(.vertical, 16)
        }
    }
}

#Preview {
    RegistrationView()
}

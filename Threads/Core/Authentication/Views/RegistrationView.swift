//
//  RegistrationView.swift
//  Threads
//
//  Created by Marcos Roberto Lemos Veloso on 01/07/25.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email: String = ""
    @State private var fullName: String = ""
    @State private var username: String = ""
    @State private var password: String = ""

    var body: some View {
        VStack {
            Spacer()

            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()

            VStack {
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)

                SecureField("Enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)

                TextField("Enter your full name", text: $fullName)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)

                TextField("Enter your username", text: $username)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .cornerRadius(10)
                    .padding(.horizontal, 24)
            }

            Button {

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

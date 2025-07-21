//
//  EditProfileView.swift
//  Threads
//
//  Created by Marcos Roberto Lemos Veloso on 04/07/25.
//

import SwiftUI

struct EditProfileView: View {
    @State private var bio: String = ""
    @State private var link: String = ""
    @State private var isPrivateProfile: Bool = false

    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGroupedBackground)
                    .ignoresSafeArea(edges: [.bottom, .horizontal])

                VStack {
                    // MARK: Name and profile img
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Name")
                                .fontWeight(.semibold)

                            TextField(
                                "Your name...",
                                text: .constant("Marcos Veloso"),
                                axis: .vertical)
                        }

                        Spacer()

                        CircularProfileImgView()
                    }

                    Divider()

                    // MARK: Bio field
                    VStack(alignment: .leading) {
                        Text("Bio")
                            .fontWeight(.semibold)

                        TextField(
                            "Enter your bio...", text: $bio, axis: .vertical)
                    }

                    Divider()

                    // MARK: Link field
                    VStack(alignment: .leading) {
                        Text("Link")
                            .fontWeight(.semibold)

                        TextField(
                            "Add link...", text: $link, axis: .vertical)
                    }

                    Divider()

                    // MARK: Private profile Toggle
                    Toggle("Private profile", isOn: $isPrivateProfile)
                }
                .font(.footnote)
                .padding()  // padding inside the background
                .background(.white)
                .clipShape(.rect(cornerRadius: 10))
                .overlay(
                    RoundedRectangle(cornerRadius: 10).stroke(
                        Color(.systemGray4), lineWidth: 1)
                )
                .padding()  // padding outside the background
            }
            .navigationTitle("Edit Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {

                    }
                    .font(.subheadline)
                    .foregroundStyle(.black)
                }

                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {

                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    EditProfileView()
}

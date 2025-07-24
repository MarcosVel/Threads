//
//  ThreadsCreationView.swift
//  Threads
//
//  Created by Marcos Roberto Lemos Veloso on 01/07/25.
//

import SwiftUI

struct ThreadsCreationView: View {
    @State private var caption: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .top) {
                    CircularProfileImgView()

                    VStack(alignment: .leading, spacing: 4) {
                        Text("marcos.veloso")
                            .fontWeight(.semibold)

                        TextField(
                            "Start a thread...", text: $caption, axis: .vertical
                        )
                    }
                    .font(.footnote)

                    Spacer()

                    if !caption.isEmpty {
                        Button {
                            // clears the input
                            caption = ""
                        } label: {
                            Image(systemName: "xmark")
                                .resizable()
                                .frame(width: 12, height: 12)
                                .foregroundStyle(.gray)
                        }
                    }
                }
                Spacer()
            }
            .padding()
            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {

                    }
                    .font(.subheadline)
                    .foregroundStyle(.black)
                }

                ToolbarItem(placement: .topBarTrailing) {
                    Button("Post") {

                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                    .opacity(caption.isEmpty ? 0.5 : 1)
                    .disabled(caption.isEmpty)
                }
            }
        }
    }
}

#Preview {
    ThreadsCreationView()
}

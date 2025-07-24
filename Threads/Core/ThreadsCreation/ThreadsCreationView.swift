//
//  ThreadsCreationView.swift
//  Threads
//
//  Created by Marcos Roberto Lemos Veloso on 01/07/25.
//

import SwiftUI

struct ThreadsCreationView: View {
    var body: some View {
        NavigationStack {
            VStack {

            }
            .navigationTitle("New Thread")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {}
                        .font(.subheadline)
                        .foregroundStyle(.black)
                }

                ToolbarItem(placement: .topBarTrailing) {
                    Button("Post") {}
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                }
            }
        }
    }
}

#Preview {
    ThreadsCreationView()
}

//
//  ThreadCell.swift
//  Threads
//
//  Created by Marcos Roberto Lemos Veloso on 01/07/25.
//

import SwiftUI

struct ThreadCell: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 12) {
                CircularProfileImgView()

                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Marcos Veloso")
                            .font(.footnote)
                            .fontWeight(.semibold)

                        Spacer()

                        Text("10m")
                            .font(.caption)
                            .foregroundStyle(Color(.systemGray3))

                        Button {

                        } label: {
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color(.darkGray))
                        }

                    }

                    Text("Hello, World!")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)

                    HStack(spacing: 16) {
                        Button {

                        } label: {
                            Image(systemName: "heart")

                        }

                        Button {

                        } label: {
                            Image(systemName: "bubble.right")

                        }

                        Button {

                        } label: {
                            Image(systemName: "arrow.rectanglepath")

                        }

                        Button {

                        } label: {
                            Image(systemName: "paperplane")

                        }
                    }
                    .foregroundStyle(.black)
                    .padding(.vertical, 8)
                }
            }
            Divider()
        }
        .padding(.top, 8)
    }
}

#Preview {
    ThreadCell()
}

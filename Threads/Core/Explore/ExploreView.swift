//
//  ExploreView.swift
//  Threads
//
//  Created by Marcos Roberto Lemos Veloso on 01/07/25.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText: String = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(0...10, id: \.self) { user in
                        VStack {
                            HStack {
                                AsyncImage(
                                    url: URL(
                                        string:
                                            "https://github.com/MarcosVel.png")
                                ) {
                                    result in
                                    result.image?
                                        .resizable()
                                        .scaledToFill()
                                }
                                .frame(width: 40, height: 40)
                                .clipShape(.circle)

                                VStack(alignment: .leading) {
                                    Text("marcosveloso99")
                                        .fontWeight(.semibold)

                                    Text("Marcos Veloso")
                                }
                                .font(.footnote)

                                Spacer()

                                Button {

                                } label: {
                                    Text("Follow")
                                        .font(.subheadline)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(.black)
                                }
                                .frame(width: 100, height: 32)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(
                                            Color(.systemGray4), lineWidth: 1)
                                }
                            }
                            .padding(.horizontal)
                        }
                        Divider()
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("Search")
            .searchable(text: $searchText, prompt: "Search")
        }
    }
}

#Preview {
    ExploreView()
}

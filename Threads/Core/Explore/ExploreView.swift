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
                        UserCell()
                        Divider()
                            .padding(.horizontal)
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

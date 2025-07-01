//
//  FeedView.swift
//  Threads
//
//  Created by Marcos Roberto Lemos Veloso on 01/07/25.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ForEach(0..<20, id: \.self) { thread in
                        ThreadCell()
                    }
                }
            }
        }
    }
}

#Preview {
    FeedView()
}

//
//  TabBarView.swift
//  Threads
//
//  Created by Marcos Roberto Lemos Veloso on 01/07/25.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab: Int = 0

    var body: some View {
        TabView(selection: $selectedTab) {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                        .environment(
                            \.symbolVariants, selectedTab == 0 ? .fill : .none
                        )
                }
                .tag(0)

            ExploreView()
                .tabItem { Image(systemName: "magnifyingglass") }
                .tag(1)

            Text("")
                .tabItem { Image(systemName: "plus") }
                .tag(2)

            ActivityView()
                .tabItem {
                    Image(systemName: "heart")
                        .environment(
                            \.symbolVariants, selectedTab == 3 ? .fill : .none
                        )
                }
                .tag(3)

            ProfileView()
                .tabItem {
                    Image(
                        systemName: "person"
                    )
                    .environment(
                        \.symbolVariants, selectedTab == 4 ? .fill : .none
                    )
                }
                .tag(4)
        }
        .sheet(
            isPresented: .constant(selectedTab == 2),
            onDismiss: {
                selectedTab = 0
            },
            content: {
                ThreadsCreationView()
            }
        )
        .tint(.black)
    }
}

#Preview {
    TabBarView()
}

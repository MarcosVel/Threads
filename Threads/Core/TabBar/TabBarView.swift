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
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                        .environment(
                            \.symbolVariants, selectedTab == 0 ? .fill : .none
                        )
                }
                .onAppear { selectedTab = 0 }
                .tag(0)

            ExploreView()
                .tabItem { Image(systemName: "magnifyingglass") }
                .onAppear { selectedTab = 1 }
                .tag(1)

            ThreadsCreationView()
                .tabItem { Image(systemName: "plus") }
                .onAppear { selectedTab = 2 }
                .tag(2)

            ActivityView()
                .tabItem {
                    Image(systemName: "heart")
                        .environment(
                            \.symbolVariants, selectedTab == 3 ? .fill : .none
                        )
                }
                .onAppear { selectedTab = 3 }
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
                .onAppear { selectedTab = 4 }
                .tag(4)
        }
        .tint(.black)
    }
}

#Preview {
    TabBarView()
}

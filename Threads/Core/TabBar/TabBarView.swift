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
            Text("Feed View")
                .tabItem {
                    Image(systemName: "house")
                        .environment(
                            \.symbolVariants, selectedTab == 0 ? .fill : .none
                        )
                }
                .onAppear { selectedTab = 0 }
                .tag(0)

            Text("Explore")
                .tabItem { Image(systemName: "magnifyingglass") }
                .onAppear { selectedTab = 1 }
                .tag(1)

            Text("Upload Thread")
                .tabItem { Image(systemName: "plus") }
                .onAppear { selectedTab = 2 }
                .tag(2)

            Text("Activity")
                .tabItem {
                    Image(systemName: "heart")
                        .environment(
                            \.symbolVariants, selectedTab == 3 ? .fill : .none
                        )
                }
                .onAppear { selectedTab = 3 }
                .tag(3)

            Text("Profile")
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
    }
}

#Preview {
    TabBarView()
}

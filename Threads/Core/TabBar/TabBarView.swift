//
//  TabBarView.swift
//  Threads
//
//  Created by Marcos Roberto Lemos Veloso on 01/07/25.
//

import SwiftUI

struct TabBarView: View {
    @State private var selectedTab: Int = 0
    @State private var isPresentingThreadCreationSheet: Bool = false

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

            Color.clear
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
                    Image(systemName: "person")
                        .environment(
                            \.symbolVariants, selectedTab == 4 ? .fill : .none
                        )
                }
                .tag(4)
        }
        .onChange(of: selectedTab) { newValue, _ in
            isPresentingThreadCreationSheet = selectedTab == 2
        }
        .sheet(
            isPresented: $isPresentingThreadCreationSheet,
            onDismiss: {
                selectedTab = 0
                isPresentingThreadCreationSheet = false
            },
            content: { ThreadsCreationView() }
        )
        .tint(.black)
    }
}

#Preview {
    TabBarView()
}

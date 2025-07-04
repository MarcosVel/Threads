//
//  ProfileView.swift
//  Threads
//
//  Created by Marcos Roberto Lemos Veloso on 01/07/25.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: ProfileThreadFilter = .threads
    @Namespace var animation

    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(spacing: 20) {
                HStack(alignment: .top) {
                    VStack(alignment: .leading, spacing: 12) {
                        // name and username
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Marcos Veloso")
                                .font(.title2)
                                .fontWeight(.semibold)

                            Text("@marcosveloso")
                                .font(.subheadline)
                        }

                        Text("Learning swiftUI")
                            .font(.footnote)

                        Text("2 users")
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }

                    Spacer()

                    CircularProfileImgView()
                }

                Button {
                } label: {
                    Text("Follow")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, minHeight: 32)
                        .background(.black)
                        .cornerRadius(8)
                }

                VStack {
                    HStack {
                        ForEach(ProfileThreadFilter.allCases) { filter in
                            VStack {
                                Text(filter.title)
                                    .font(.subheadline)
                                    .fontWeight(
                                        selectedFilter == filter
                                            ? .semibold : .regular)

                                if selectedFilter == filter {
                                    Rectangle()
                                        .foregroundStyle(.black)
                                        .frame(height: 1)
                                        .matchedGeometryEffect(
                                            id: "item", in: animation)
                                } else {
                                    Rectangle()
                                        .foregroundStyle(.clear)
                                        .frame(height: 1)
                                }
                            }
                            .frame(maxWidth: .infinity)  // makes each VStack take equal space in HStack
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    selectedFilter = filter
                                }
                            }
                        }
                    }
                }

                LazyVStack {
                    ForEach(0...10, id: \.self) { thread in
                        ThreadCell()
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ProfileView()
}

//
//  UserCell.swift
//  Threads
//
//  Created by Marcos Roberto Lemos Veloso on 02/07/25.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack {
            CircularProfileImgView()

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
}

#Preview {
    UserCell()
}

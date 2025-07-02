//
//  CircularProfileImgView.swift
//  Threads
//
//  Created by Marcos Roberto Lemos Veloso on 02/07/25.
//

import SwiftUI

struct CircularProfileImgView: View {
    var body: some View {
        //            Image()
        AsyncImage(url: URL(string: "https://github.com/MarcosVel.png"))
        {
            result in
            result.image?
                .resizable()
                .scaledToFill()
        }
        .frame(width: 40, height: 40)
        .clipShape(.circle)
    }
}

#Preview {
    CircularProfileImgView()
}

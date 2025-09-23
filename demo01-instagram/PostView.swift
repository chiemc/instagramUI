//
//  PostView.swift
//  demo01-instagram
//
//  Created by chevy on 9/16/25.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image("Image")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .clipShape(Circle())
                Text("chevychiem")
                    .font(.headline)
                Spacer()
                Image(systemName: "ellipsis")
            }
            Image("IMG_6028")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .padding(.horizontal, -16)
            HStack {
                Image(systemName: "heart.fill")
                Text("100.3M")
                Image(systemName: "bubble")
                Text("99.2M")
                Image(systemName: "repeat")
                Text("5.9M")
                Image(systemName: "paperplane")
                Text("58.2M")
                Spacer()
                Image(systemName: "bookmark.fill")
            }
            HStack {
                Text("chevychiem")
                    .font(.headline)
                Text("hey lol")
            }
            Text("30 seconds ago")
                .font(.caption)
                .foregroundColor(.secondary)
        } .padding(10)
    }
}

#Preview {
    PostView()
}

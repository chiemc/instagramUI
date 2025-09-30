//
//  PostView.swift
//  demo01-instagram
//
//  Created by chevy on 9/16/25.
//

import SwiftUI

struct PostView: View {
    var body: some View {
        HeaderBar(username: "chevychiem")

        Post(
            username: "chevychiem",
            profilePicture: .chevy,
            postPicture: .IMG_6028,
            likes: "100M",
            comments: "99M",
            reposts: "5M",
            shares: "58M",
            caption: "hey lol",
            timeStamp: "30 seconds ago"
        )

        NavigationBar()
    }

    struct HeaderBar: View {
        var username: String

        var body: some View {
            HStack {
                Image(systemName: "chevron.backward")
                    .font(.title2)

                Spacer()

                VStack {
                    Text("Posts")
                        .bold()
                    Text(username)
                        .font(.subheadline)
                }

                Spacer().frame(maxWidth: 139)
            }
            .padding(.horizontal, 20)
            Spacer().frame(maxHeight: 75)
        }
    }

    struct Post: View {
        var username: String
        var profilePicture: ImageResource
        var postPicture: ImageResource
        var likes: String
        var comments: String
        var reposts: String
        var shares: String
        var caption: String
        var timeStamp: String

        var body: some View {
            VStack(alignment: .leading) {
                HStack {
                    Image(profilePicture)
                        .resizable()
                        .frame(width: 35, height: 35)
                        .clipShape(Circle())

                    Text(username)
                        .font(.headline)
                    Spacer()
                    Image(systemName: "ellipsis")
                }
                .padding(.horizontal, 8)

                Image(postPicture)
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .padding(.horizontal, -20)

                Spacer().frame(maxHeight: 10)

                HStack {
                    Image(systemName: "heart.fill")
                        .foregroundStyle(Color(.red))
                        .font(.title2)
                        .fontWeight(.semibold)

                    Text(likes)
                        .fontWeight(.semibold)
                        .font(.subheadline)

                    Image(systemName: "bubble")
                        .fontWeight(.semibold)
                        .font(.title2)

                    Text(comments)
                        .fontWeight(.semibold)
                        .font(.subheadline)

                    Image(systemName: "repeat")
                        .fontWeight(.semibold)
                        .font(.title2)

                    Text(reposts)
                        .fontWeight(.semibold)
                        .font(.subheadline)

                    Image(systemName: "paperplane")
                        .fontWeight(.semibold)
                        .font(.title2)

                    Text(shares)
                        .fontWeight(.semibold)
                        .font(.subheadline)

                    Spacer()

                    Image(systemName: "bookmark.fill")
                        .fontWeight(.semibold)
                        .font(.title2)
                }

                .padding(.horizontal, 8)

                Spacer().frame(maxHeight: 5)

                HStack {
                    Text(username)
                        .font(.headline)

                    Text(caption)
                }.padding(.horizontal, 8)

                Spacer().frame(maxHeight: 5)

                Text(timeStamp)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .padding(.horizontal, 8)

                Spacer()
            }
        }
    }

}

struct NavigationBar: View {
    var body: some View {
        HStack {
            Image(systemName: "house")
                .font(.title2)
                .fontWeight(.semibold)

            Spacer()

            Image(systemName: "magnifyingglass")
                .font(.title2)
                .fontWeight(.semibold)

            Spacer()

            Image(systemName: "plus.app")
                .font(.title2)
                .fontWeight(.semibold)

            Spacer()

            Image(systemName: "play.rectangle")
                .font(.title2)
                .fontWeight(.semibold)

            Spacer()

            Image(systemName: "person.circle.fill")
                .font(.title2)
                .fontWeight(.semibold)
        }
        .padding(.horizontal, 24)
        .padding(.bottom, 10)
    }
}

#Preview {
    PostView()
        .preferredColorScheme(.dark)
}

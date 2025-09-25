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
                Image(systemName: "chevron.backward")
                    .font(.title2)
                Spacer()
                VStack() {
                    Text("Posts")
                        .bold()
                    Text("chevychiem")
                        .font(.subheadline)
                }
                
                Spacer().frame(maxWidth: 133)
            }
            .padding(.horizontal)
            Spacer().frame(maxHeight: 75)
            
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
            Spacer().frame(maxHeight: 10)
            HStack {
                Image(systemName: "heart.fill")
                    .foregroundStyle(Color(.red))
                    .font(.title2)
                    .fontWeight(.semibold)
                Text("100.3M")
                    .fontWeight(.semibold)
                    .font(.subheadline)
                Image(systemName: "bubble")
                    .fontWeight(.semibold)
                    .font(.title2)
                Text("99.2M")
                    .fontWeight(.semibold)
                    .font(.subheadline)
                Image(systemName: "repeat")
                    .fontWeight(.semibold)
                    .font(.title2)
                Text("5.9M")
                    .fontWeight(.semibold)
                    .font(.subheadline)
                Image(systemName: "paperplane")
                    .fontWeight(.semibold)
                    .font(.title2)
                Text("58M")
                    .fontWeight(.semibold)
                    .font(.subheadline)
                Spacer()
                Image(systemName: "bookmark.fill")
                    .fontWeight(.semibold)
                    .font(.title2)
            }
            
            Spacer().frame(maxHeight: 5)
            HStack {
                Text("chevychiem")
                    .font(.headline)
                Text("hey lol")
            }
            Spacer().frame(maxHeight: 5)
            Text("30 seconds ago")
                .font(.caption)
                .foregroundColor(.secondary)
        } .padding(10)
        Spacer()
        
        HStack() {
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
        .padding(.bottom, 8)
    }
    
}

#Preview {
    PostView()
        .preferredColorScheme(.dark)
}

//
//  PostView.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 1/31/22.
//

import SwiftUI

struct PostView: View {
    let post: Post
    
    var body: some View {
        HStack(alignment: .top) {
            VStack {
                Image(post.authorImageAddress)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 40.0, height: 40.0)
                    .clipShape(Circle())
                //                Spacer()
            }
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(post.authorName)
                            .fontWeight(.bold)
                        Text("@" + post.authorUsername)
                            .foregroundColor(.gray)
                    }
                    
                }
                Text(post.postContent)
                Text(post.formattedDate)
                    .foregroundColor(.gray)
                    .fontWeight(.light)
                HStack {
                    Button {} label: {
                        Image(systemName: "bubble.left")
                    }
                    Button {} label: {
                        Image(systemName: "arrow.rectanglepath")
                    }
                    Button {} label: {
                        Image(systemName: "heart")
                    }
                    
                }
            }
            //            .padding()
        }
        .padding()
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: .example)
            .bothColorSchemes()
    }
}

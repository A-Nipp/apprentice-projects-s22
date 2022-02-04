//
//  PostView.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 1/31/22.
//

import SwiftUI

struct PostView: View {
    let post: Post
    let bodyFontSize = 14.0
    let vertSpace = 8.0
    @State private var isLiked = false
    @State private var likeColor = Color(UIColor.label)
    @State private var heartIcon = "heart"
    @State private var heartIconColor = Color(UIColor.systemBlue)
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
            VStack(alignment: .leading, spacing: vertSpace) {
                HStack {
                    Text(post.authorName)
                        .fontWeight(.bold)
                    Text("@" + post.authorUsername)
                        .foregroundColor(.gray)
                }
                
                
                Text(post.postContent)
                    .font(.system(size: bodyFontSize))
                Text(post.formattedDate)
                    .foregroundColor(.gray)
                    .fontWeight(.light)
                HStack {
                    Button {} label: {
                        Image(systemName: "bubble.left")
                    }
                    Text("\(post.commentCount)")
//                    Button {} label: {
//                        Image(systemName: "arrow.rectanglepath")
//                    }
                    Button {
                        withAnimation {
                            toggleLiked()
                        }
                    } label: {
                        Image(systemName: heartIcon)
                            .foregroundColor(heartIconColor)
                    }
                    Text("\(post.likeCount)")
                        .foregroundColor(likeColor)
                    
                }
            }
            //            .padding()
        }
        .padding(5)
        
    }
    
    func toggleLiked() {
        if isLiked {
            likeColor = Color(UIColor.label)
            heartIcon = "heart"
            heartIconColor = Color(UIColor.systemBlue)
        }
        else {
            likeColor = Color.red
            heartIcon = "heart.fill"
            heartIconColor = Color.red
        }
        isLiked.toggle()
    }
}
struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: .example)
            .bothColorSchemes()
    }
}

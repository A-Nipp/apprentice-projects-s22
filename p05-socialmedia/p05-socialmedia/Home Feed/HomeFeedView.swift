//
//  HomeFeedView.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 2/1/22.
//

import SwiftUI

struct HomeFeedView: View {
    let posts: [Post] = PostList.defaultPosts
    
    var body: some View {
        NavigationView {
            ZStack {
                ScrollView {
                    VStack(alignment:.leading) {
                        ForEach(posts, id: \.id) { post in
                            PostView(post: post)
                                .padding()
                            Divider()
                        }
                    }
                }
                .navigationTitle(Text("bluebird"))
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button {} label: {
                            Text("+")
                                .font(.system(size:30))
                                .frame(width:50, height:50)
                                .foregroundColor(Color.white)
                                .background(Color.blue)
                                .clipShape(Circle())
                        }
                        .padding(15)
                    }
                }
            }
        }
    }
}


struct HomeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFeedView()
    }
}

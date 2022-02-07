//
//  ProfileView.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 2/2/22.
//

import SwiftUI

struct ProfileView: View {
    let name: String = "App Team Carolina"
    let username: String = "appteamcarolina"
    let profileImageAddress: String = "appteam" // will eventually be url
    
    let userPosts: [Post] = PostList.defaultPosts
    let banner = Color.blue

    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Rectangle()
                    .frame(height:80)
                    .opacity(0)
                HStack {
                    Image(profileImageAddress)
                        .resizable()
                        .frame(width: 70.0, height: 70.0)
                        .clipShape(Circle())
                    Spacer()
                    Button {} label: {
                        Text("Edit Profile")
                    }
                }
                Text(name)
                    .font(.largeTitle)
                Text("@\(username)")
                    .foregroundColor(Color.gray)
                    .font(.system(size: 14.0))
                Text("Tweets")
                    .padding(.vertical)
                Divider()
                VStack(alignment:.leading) {
                    ForEach(userPosts, id: \.id) { post in
                        PostView(post: post)
                            .padding(.vertical)
                        Divider()
                    }
                }
            }
            .padding()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

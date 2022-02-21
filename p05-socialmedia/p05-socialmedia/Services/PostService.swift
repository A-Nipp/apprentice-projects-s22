//
//  PostService.swift
//  p05-socialmedia
//
//  Created by AlecNipp on 2/21/22.
//

import Foundation

struct PostService {
    private static var posts: [Post] = PostList.defaultPosts
    
    static func getHomeFeed() -> [Post] {
        return posts
    }
    
    static func makePost(post: Post) -> Void {
        posts.insert(post, at: 0)
    }
}

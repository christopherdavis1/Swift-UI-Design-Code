//
//  PostList.swift
//  DesignCode2
//
//  Created by Christopher Davis on 2/8/20.
//  Copyright © 2020 Christopher Davis. All rights reserved.
//

import SwiftUI

struct PostList: View {
    
    @State var posts: [Post] = []
    
    var body: some View {
        
        List(posts) { post in
            Text(post.title)
        }
        .onAppear {
            Api().getPosts { (posts) in
                self.posts = posts
            }
        }
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}

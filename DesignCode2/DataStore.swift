//
//  DataStore.swift
//  DesignCode2
//
//  Created by Christopher Davis on 2/8/20.
//  Copyright © 2020 Christopher Davis. All rights reserved.
//

import SwiftUI
import Combine

class DataStore: ObservableObject {
    @Published var posts: [Post] = []
    
    init() {
        getPosts()
    }
    
    func getPosts() {
        Api().getPosts { (post) in
            self.posts = post
        }
    }
}

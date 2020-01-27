//
//  TabBar.swift
//  DesignCode2
//
//  Created by Christopher Davis on 1/20/20.
//  Copyright © 2020 Christopher Davis. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            Home()
                .tabItem({
                    Image(systemName: "play.circle.fill")
                    Text("Home")
                })
            
            ContentView()
            .tabItem({
                Image(systemName: "rectangle.stack.fill")
                Text("Certificates")
            })
            
            UpdateList()
            .tabItem({
                Image(systemName: "bell.fill")
                Text("Updates")
            })
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TabBar()
        }
    }
}

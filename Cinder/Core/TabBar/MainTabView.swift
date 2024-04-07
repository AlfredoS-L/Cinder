//
//  MainTabBar.swift
//  Cinder
//
//  Created by Alfredo Sandoval-Luis on 3/24/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            CardStackView()
                .tabItem { 
                    Image(systemName: "flame")
                }
                .tag(0)
            
            Text("Search View")
                .tabItem { Image(systemName: "magnifyingglass") }
                .tag(1)
            
            Text("Inbox View")
                .tabItem { Image(systemName: "bubble")
                    // if using custom images for the image bubbles, use
                    // .renderingMode(.template) to match color scheme
                }
                .tag(2)
            
            Text("Profile View")
                .tabItem { Image(systemName: "person") }
                .tag(3)
        }
        .tint(.orange)
    }
}

#Preview {
    MainTabView()
}

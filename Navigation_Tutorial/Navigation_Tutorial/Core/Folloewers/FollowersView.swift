//
//  FollowersView.swift
//  Navigation_Tutorial
//
//  Created by ToBy_RedStones on 28/6/2023.
//

import SwiftUI

struct FollowersView: View {
    var followers: [User]
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(followers) { user in
                    UserRow(user: user)
                }
            }
        }
        .navigationTitle("Followers")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FollowersView_Previews: PreviewProvider {
    static var previews: some View {
        FollowersView(followers: User.allUsers)
    }
}

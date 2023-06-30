//
//  FollowingView.swift
//  Navigation_Tutorial
//
//  Created by ToBy_RedStones on 28/6/2023.
//

import SwiftUI

struct FollowingView: View {
    var following: [User]
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(following) { user in
                    UserRow(user: user)
                }
            }
        } 
        .navigationTitle("Following")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct FollowingView_Previews: PreviewProvider {
    static var previews: some View {
        FollowingView(following: User.allUsers)
    }
}

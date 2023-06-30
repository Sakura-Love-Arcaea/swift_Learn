//
//  FollowCountView.swift
//  Navigation_Tutorial
//
//  Created by ToBy_RedStones on 28/6/2023.
//

import SwiftUI

struct FollowCountView: View {
    var user: User
    
    var body: some View {
        HStack {
            Spacer()
            
            NavigationLink(value: Route.followers) {
                VStack {
                    Text("\(user.followers.count)")
                    Text("Followers")
                }
            }
            
            Spacer()
            
            NavigationLink(value: Route.following) {
                VStack {
                    Text("\(user.following.count)")
                    Text("Following")
                }
            }
            
            Spacer()
        }
        .bold()
    }
}

struct FollowCountView_Previews: PreviewProvider {
    static var previews: some View {
        FollowCountView(user: .mockUser)
    }
}

//
//  ProfileView.swift
//  Navigation_Tutorial
//
//  Created by ToBy_RedStones on 28/6/2023.
//

import SwiftUI

struct ProfileView: View {
    @State var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path){
            VStack(spacing: 10) {
                HeaderView(user: .mockUser)
                    .border(.black)
                
                InfoView()
                    .border(.black)
                
                FollowCountView(user: .mockUser)
                    .border(.black)
                
                EditButton()
                    .border(.black)
                
                PostListView()
                    .border(.black)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .navigationDestination(for: Route.self) { route in
                switch route {
                
                case .followers:
                    FollowersView(followers: User.allUsers)
                case .following:
                    FollowingView(following: User.allUsers)
                case .edit:
                    EditPageView()
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

//
//  PostListView.swift
//  Navigation_Tutorial
//
//  Created by ToBy_RedStones on 28/6/2023.
//

import SwiftUI

struct PostListView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0..<10, id: \.self) { _ in
                    PostRow()
                }
            }
        }
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView()
    }
}

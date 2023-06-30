//
//  PostView.swift
//  Navigation_Tutorial
//
//  Created by ToBy_RedStones on 30/6/2023.
//

import SwiftUI

struct PostView: View {
    
    @State var title: String
    
    var body: some View {
        Text("this is post view")
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
    }
    
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(title: "test title")
    }
}

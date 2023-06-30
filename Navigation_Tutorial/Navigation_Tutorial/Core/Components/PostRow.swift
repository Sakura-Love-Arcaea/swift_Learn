//
//  PostRow.swift
//  Navigation_Tutorial
//
//  Created by ToBy_RedStones on 28/6/2023.
//

import SwiftUI

struct PostRow: View {
    var body: some View {
        NavigationLink(value: Post.post) {
            ZStack {
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .fill(.white)
                    .shadow(radius: 5)
                
                HStack(spacing: 20) {
                    Image(systemName: "pencil")
                        .font(.system(size: 30))
                        .frame(width: 60, height: 60)
                        .foregroundColor(.purple)
                        .overlay {
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.purple, lineWidth: 2)
                        }
                    VStack(alignment: .leading) {
                        Text("Mock Post")
                            .bold()
                        
                        Text("Mock Content")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
            }
            .frame(height: 100)
            .navigationDestination(for: Post.self) { post in
                PostView(title: "Mock Post")
        }
        
        }
    }
}

struct PostRow_Previews: PreviewProvider {
    static var previews: some View {
        PostRow()
    }
}

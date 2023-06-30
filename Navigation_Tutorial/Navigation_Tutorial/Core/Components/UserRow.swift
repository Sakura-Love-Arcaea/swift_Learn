//
//  UserRow.swift
//  Navigation_Tutorial
//
//  Created by ToBy_RedStones on 28/6/2023.
//

import SwiftUI

struct UserRow: View {

    var user: User
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(.white)
                .shadow(radius: 5)
            
            HStack(spacing: 20) {
                Image(systemName: "person")
                    .font(.system(size: 30))
                    .frame(width: 60, height: 60)
                    .foregroundColor(.purple)
                    .overlay {
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.purple, lineWidth: 2)
                    }
                VStack(alignment: .leading) {
                    Text("\(user.dispalyName)")
                        .bold()
                    
                    Text("\(user.username)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                
                Spacer()
            }
            .padding(.horizontal)
        }
        .frame(height: 100)
    }
}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow(user: .mockUser)
    }
}

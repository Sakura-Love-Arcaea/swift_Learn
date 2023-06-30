//
//  EditButton.swift
//  Navigation_Tutorial
//
//  Created by ToBy_RedStones on 28/6/2023.
//

import SwiftUI

struct EditButton: View {
    var body: some View {
        NavigationLink(value: Route.edit){
            ZStack {
                RoundedRectangle(cornerRadius: 24, style: .circular)
                    .fill(.white)
                    .shadow(radius: 5)
                
                Text("Edit Profile")
                    .font(.subheadline)
                    .bold()
                    .frame(width: 140, height: 32)
            }
            .buttonStyle(.bordered)
            .frame(width: 140, height: 48)
            
        }
    }
}

struct EditButton_Previews: PreviewProvider {
    static var previews: some View {
        EditButton()
    }
}

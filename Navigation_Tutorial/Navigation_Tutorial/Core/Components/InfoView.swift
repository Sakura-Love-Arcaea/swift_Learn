//
//  InfoView.swift
//  Navigation_Tutorial
//
//  Created by ToBy_RedStones on 28/6/2023.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Label("最後上線", systemImage: "clock")
                    .foregroundColor(.gray)
                
                Label("地點", systemImage: "map")
                    .foregroundColor(.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

//
//  EditPageView.swift
//  Navigation_Tutorial
//
//  Created by ToBy_RedStones on 30/6/2023.
//

import SwiftUI

struct EditPageView: View {
    var body: some View {
        Text("this edit view")
            .navigationTitle("EditPage")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct EditPageView_Previews: PreviewProvider {
    static var previews: some View {
        EditPageView()
    }
}

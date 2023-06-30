//
//  ContentView.swift
//  Hello_swift
//
//  Created by ToBy_RedStones on 21/6/2023.
//

import SwiftUI

struct ContentView: View {
    private let griditem = [
        GridItem(),
        GridItem(),
        GridItem()
    ]
    
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: griditem) {
                    ForEach(1..<100, id: \.self) { Index in
                        Button {
                            print(Index.description)
                        }label: {
                            Text(Index.description)
                                .foregroundColor(.gray)
                                .padding(.horizontal)
                                .border(Color.red)
                        }
                    }
                }
            }
            .border(Color.black)
            
            Text("This is botton")
                .padding(.horizontal, 100)
                .border(Color.blue)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
	

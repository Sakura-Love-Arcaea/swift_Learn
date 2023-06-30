//
//  File.swift
//  Navigation_Tutorial
//
//  Created by ToBy_RedStones on 27/6/2023.
//

import Foundation

struct User: Identifiable {
    var id: String
    var dispalyName: String
    var username: String
    var followers: [User] = [User]()
    var following: [User] = [User]()
    
    static var emptyUser = User(id: "", dispalyName: "", username: "")
    
    static var mockUser = User(id: "User-20040730", dispalyName: "小櫻/sakura", username: "@Sakura_Love_Arcaea")
    
    static var allUsers = [
        User(id: "User-20040730", dispalyName: "小櫻/sakura", username: "@Sakura_Love_Arcaea"),
        User(id: "User-20051210", dispalyName: "🍬🍬🍬🍬", username: "@ashleyyyyy._.1210"),
        User(id: "User-20230101", dispalyName: "Mock User 1", username: "@MockUser1"),
        User(id: "User-20230102", dispalyName: "Mock User 2", username: "@MockUser2")
    ]
    
    
    
}

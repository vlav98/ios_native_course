//
//  User.swift
//  valentine.l
//
//  Created by jpo on 06/07/2021.
//

import Foundation

//struct User {
//    let profileURL: URL?
//    let postCount: Int
//    let followings: Int
//    let followers: Int
//    let name: String
//    let title: String
//    let description: String
//}

class User: ObservableObject {
    @Published var profileURL: URL?
    @Published var postCount: Int
    @Published var followings: Int
    @Published var followers: Int
    @Published var name: String
    @Published var title: String
    @Published var description: String
    
    init(profileURL: URL?, postCount: Int, followings: Int, followers: Int, name: String, title: String, description: String) {
        self.profileURL = profileURL
        self.postCount = postCount
        self.followings = followings
        self.followers = followers
        self.name = name
        self.title = title
        self.description = description
    }
}

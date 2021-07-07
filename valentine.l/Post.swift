//
//  Post.swift
//  valentine.l
//
//  Created by jpo on 06/07/2021.
//

import Foundation

class Post: Identifiable, ObservableObject {
    var id = UUID()
    let creator: User
    let userLocation: String
    let pictureURL: URL?
    
    @Published var isLiked: Bool
    @Published var isSaved: Bool
    
    init(id: UUID = UUID(), creator: User, userLocation: String, pictureURL: URL?, isLiked: Bool, isSaved: Bool) {
        self.id = id
        self.creator = creator
        self.userLocation = userLocation
        self.pictureURL = pictureURL
        self.isLiked = isLiked
        self.isSaved = isSaved
    }
}

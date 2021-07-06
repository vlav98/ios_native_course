//
//  Post.swift
//  valentine.l
//
//  Created by jpo on 06/07/2021.
//

import Foundation

struct Post: Identifiable {
    var id = UUID()
    let creator: User
    let userLocation: String
    let pictureURL: URL?
    
    var isLiked: Bool
    var isSaved: Bool
}

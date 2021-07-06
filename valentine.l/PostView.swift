//
//  PostView.swift
//  valentine.l
//
//  Created by jpo on 06/07/2021.
//

import SwiftUI
import Kingfisher

struct PostView: View {
    let post: Post
    var body: some View {
        VStack {
            HeaderPost(
                profileURL: post.creator.profileURL,
                name: post.creator.name,
                location: post.userLocation
            )
            KFImage(post.pictureURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
//            HStack {
//                ActivableButton(iconName: "heart", isOnColor: .red, isOn: $isLiked)
//                ActivableButton(iconName: "flag", isOnColor: .primary, isOn: $isSaved)
//            }
//            .scaledToFit()
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PostView(post: PreviewData.post)
        }
    }
}

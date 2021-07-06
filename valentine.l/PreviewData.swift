//
//  PreviewData.swift
//  valentine.l
//
//  Created by jpo on 06/07/2021.
//

import Foundation

struct PreviewData {
    static let user = User(
        profileURL: URL(string: "https://static.wikia.nocookie.net/gensin-impact/images/9/97/Weibo_Firefly_Carnival_Event_Artwork.jpg/revision/latest/scale-to-width-down/1000?cb=20201221052234"),
        postCount: 10,
        followings: 20,
        followers: 1389158,
        name: "钟离",
        title: "Archon",
        description: "一份新的「契约」？好吧…虽然我还在度假，但也可以陪你走一趟。契约书上，该签什么名字呢？我有许多名字，度假期间的话…我会自称「钟离」。你呢，旅行者？你会签下什么名字"
    )
    
    static let post = Post(
        creator: PreviewData.user,
        userLocation: "璃月",
        pictureURL: URL(string: "https://www.hebergementwebs.com/image/38/387d2c3a0126d13b82ed6acd2cad4ddf.jpg/la-mise-a-jour-1-3-de-genshin-impact-bring-the-lantern-rite-of-liyue-and-a-four-star-character-free-9.jpg"),
        isLiked: false,
        isSaved: false
    )
    
    static let posts = [
        Post(
            creator: PreviewData.user,
            userLocation: "璃月",
            pictureURL: URL(string: "https://picfiles.alphacoders.com/390/thumb-1920-390605.png"),
            isLiked: false,
            isSaved: false
        ),
        Post(
            creator: PreviewData.user,
            userLocation: "璃月",
            pictureURL: URL(string: "https://www.hebergementwebs.com/image/38/387d2c3a0126d13b82ed6acd2cad4ddf.jpg/la-mise-a-jour-1-3-de-genshin-impact-bring-the-lantern-rite-of-liyue-and-a-four-star-character-free-9.jpg"),
            isLiked: false,
            isSaved: false
        ),
        Post(
            creator: PreviewData.user,
            userLocation: "璃月",
            pictureURL: URL(string: "https://static.wikia.nocookie.net/gensin-impact/images/3/36/Lantern_Rite_Tales_III_-_Qingce_Village.jpg/revision/latest/scale-to-width-down/2000?cb=20210222053646"),
            isLiked: false,
            isSaved: false
        ),
        Post(
            creator: PreviewData.user,
            userLocation: "Mondstadt",
            pictureURL: URL(string: "https://static.wikia.nocookie.net/gensin-impact/images/9/9d/Mondstadt.jpg/revision/latest?cb=20201108233853"),
            isLiked: false,
            isSaved: false
        )
    ]
    
}

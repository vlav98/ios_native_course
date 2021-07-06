//
//  ContentView.swift
//  valentine.l
//
//  Created by jpo on 05/07/2021.
//

import SwiftUI

struct ContentView: View {
    let postCount = 10
    let followers = 1365988
    let followings = 5
    let name = "Zhongli"
    let title = "Personnage fictionnel"
    let description = "一份新的「契约」？好吧…虽然我还在度假，但也可以陪你走一趟。契约书上，该签什么名字呢？我有许多名字，度假期间的话…我会自称「钟离」。你呢，旅行者？你会签下什么名字？"
    let link = "https://ys.mihoyo.com/main/character/liyue?char=9"
    
    @State var isMore = false
    @State var isLiked = false
    
    var body: some View {
        VStack {
            HeaderView(postCount: postCount, followers: followers, followings: followings, name: name, title: title, description: description)
            LikeButton(isLiked: $isLiked)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}

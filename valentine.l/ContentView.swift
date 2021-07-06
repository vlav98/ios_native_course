//
//  ContentView.swift
//  valentine.l
//
//  Created by jpo on 05/07/2021.
//

import SwiftUI

struct ContentView: View {
    let link = "https://ys.mihoyo.com/main/character/liyue?char=9"
    
    @State var isMore = false
    @State var isLiked = false
    
    var body: some View {
        ScrollView {
            VStack {
                HeaderView(user: PreviewData.user)
                ForEach(PreviewData.posts) { post in
                    PostView(post: post)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro")
    }
}

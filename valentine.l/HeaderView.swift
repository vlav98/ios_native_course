//
//  HeaderView.swift
//  valentine.l
//
//  Created by jpo on 05/07/2021.
//

import SwiftUI

struct HeaderView: View {
    
    let postCount: Int
    let followers: Int
    let followings: Int
    let name: String
    let title: String
    let description: String
    let link = "https://ys.mihoyo.com/main/character/liyue?char=9"
    
    @State var isMore = false
    
    var body: some View {
        VStack(spacing: 10.0) {
            HStack(alignment: .center) {
                Image("WB_ZL").resizable()
                    .scaledToFit().clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    .frame(minWidth: 0,
                            maxWidth: .infinity)
                Spacer()
                VStack {
                    Text("\(postCount)")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    Text("posts")
                }.frame(minWidth: 0,
                        maxWidth: .infinity)
                Spacer()
                VStack {
                    Text("\(followers)")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    Text("followers")
                }.frame(minWidth: 0,
                        maxWidth: .infinity)
                Spacer()
                VStack {
                    Text("\(followings)")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    Text("following")
                }.frame(minWidth: 0,
                        maxWidth: .infinity)
            }
            .frame(minWidth: 0,
                   maxWidth: .infinity)
            VStack(alignment: .leading) {
                Text("\(name)")
                    .fontWeight(.bold)
                Text("\(title)")
                    .foregroundColor(Color.gray)
                Text("\(description)")
                    .lineLimit(3)
                HStack {
                    Spacer()
                    Button(action: {
                        isMore.toggle()
                    }, label: {
                        Text(isMore ? "Less" : "More")
                            .foregroundColor(Color.gray)
                    })
                }
                Text("\(link)")
                    .foregroundColor(Color.blue)
                    .lineLimit(1)
            }
        }
        .padding(.horizontal, 10)
    }
}

struct HeaderView_Previews: PreviewProvider {
    
    static let postCount = 10
    static let followers = 1365988
    static let followings = 5
    static let name = "Zhongli"
    static let title = "Personnage fictionnel"
    static let description = "一份新的「契约」？好吧…虽然我还在度假，但也可以陪你走一趟。契约书上，该签什么名字呢？我有许多名字，度假期间的话…我会自称「钟离」。你呢，旅行者？你会签下什么名字？"
    
    static var previews: some View {
        Group {
            HeaderView(postCount: postCount, followers: followers, followings: followings, name: name, title: title, description: description)
        }
        .previewLayout(.sizeThatFits)
    }
}

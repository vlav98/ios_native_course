//
//  HeaderView.swift
//  valentine.l
//
//  Created by jpo on 05/07/2021.
//

import SwiftUI
import Kingfisher

struct HeaderView: View {
    
    @ObservedObject var user = PreviewData.user
    let link = "https://ys.mihoyo.com/main/character/liyue?char=9"
    @State var isHidden = false
    @State var isMore = false
    
    var body: some View {
        VStack(spacing: 10.0) {
            HStack(alignment: .center) {
                KFImage(user.profileURL)
                    .resizable()
                    .scaledToFit().clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    .frame(minWidth: 0,
                            maxWidth: .infinity)
                Spacer()
                VStack {
                    Text("\(user.postCount)")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    Text("posts")
                }.frame(minWidth: 0,
                        maxWidth: .infinity)
                Spacer()
                VStack {
                    Text("\(user.followers)")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    Text("followers")
                }.frame(minWidth: 0,
                        maxWidth: .infinity)
                Spacer()
                VStack {
                    Text("\(user.followings)")
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    Text("following")
                }.frame(minWidth: 0,
                        maxWidth: .infinity)
            }
            .frame(minWidth: 0,
                   maxWidth: .infinity)
            VStack(alignment: .leading) {
                Text(user.name)
                    .fontWeight(.bold)
                Text(user.title)
                    .foregroundColor(Color.gray)
                Text(user.description)
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
            Button(action: {
                user.followers += 1
                isHidden = true
            }, label: {
                HStack {
                    Spacer()
                    Text("Follow").padding()
                        .foregroundColor(.white)
                    Spacer()
                }
                .background(Color.blue)
                .cornerRadius(10)
                .opacity(isHidden ? 0 : 1)
            })
        }
        .padding(.horizontal, 10)
    }
}

struct HeaderView_Previews: PreviewProvider {
    
    static var previews: some View {
        Group {
            HeaderView(user: PreviewData.user)
        }
        .previewLayout(.sizeThatFits)
    }
}

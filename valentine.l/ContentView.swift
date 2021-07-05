//
//  ContentView.swift
//  valentine.l
//
//  Created by jpo on 05/07/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 10.0) {
            HStack(alignment: .center) {
                Image("WB_ZL").resizable()
                    .scaledToFit().clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    .frame(minWidth: 0,
                            maxWidth: .infinity)
                VStack {
                    Text("10")
                        .fontWeight(.bold)
                    Text("posts")
                }.frame(minWidth: 0,
                        maxWidth: .infinity)
                VStack {
                    Text("1,2M")
                        .fontWeight(.bold)
                    Text("followers")
                }.frame(minWidth: 0,
                        maxWidth: .infinity)
                VStack {
                    Text("5")
                        .fontWeight(.bold)
                    Text("following")
                }.frame(minWidth: 0,
                        maxWidth: .infinity)
            }
            .frame(minWidth: 0,
                   maxWidth: .infinity)
            VStack(alignment: .leading) {
                Text("Zhongli")
                    .fontWeight(.bold)
                Text("Personnage imaginaire")
                    .foregroundColor(Color.gray)
                Text("一份新的「契约」？好吧…虽然我还在度假，但也可以陪你走一趟。契约书上，该签什么名字呢？我有许多名字，度假期间的话…我会自称「钟离」。你呢，旅行者？你会签下什么名字？")
                    .lineLimit(3)
                Text("https://ys.mihoyo.com/main/character/liyue?char=9")
                    .foregroundColor(Color.blue)
                    .lineLimit(1)
            }
            Spacer()
        }
        .padding(.horizontal, 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}

//
//  PostView.swift
//  valentine.l
//
//  Created by jpo on 06/07/2021.
//

import SwiftUI
import Kingfisher

struct PostView: View {
    let postURL = URL(string: "https://static.wikia.nocookie.net/gensin-impact/images/5/56/Liyue_%28Lantern_Rite%29.png/revision/latest/scale-to-width-down/1000?cb=20210216222706")
    
    @State var isLiked = false
    
    var body: some View {
        VStack {
            HStack {
                Image("WB_ZL").resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(minWidth: 0,
                            maxWidth: 50)
                VStack(alignment: .leading) {
                    Text("Zhongli")
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                    Text("Liyue")
                        .multilineTextAlignment(.leading)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                Spacer()
            }
            KFImage(postURL)
                .resizable()
                .aspectRatio(contentMode: .fill)
            HStack {
                LikeButton(isLiked: $isLiked)
                    .padding()
            }
            .scaledToFit()
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}

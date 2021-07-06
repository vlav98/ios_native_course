//
//  HeaderPost.swift
//  valentine.l
//
//  Created by jpo on 06/07/2021.
//

import SwiftUI
import Kingfisher

struct HeaderPost: View {
    let profileURL: URL?
    let name: String
    let location: String
    
    var body: some View {
        HStack {
            KFImage(profileURL)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(minWidth: 0,
                        maxWidth: 50)
            VStack(alignment: .leading) {
                Text(name)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.leading)
                Text(location)
                    .multilineTextAlignment(.leading)
            }
            .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            Spacer()
        }.padding(.horizontal)
    }
}

struct HeaderPost_Previews: PreviewProvider {
    static let profileURL = URL(string: "https://static.wikia.nocookie.net/gensin-impact/images/9/97/Weibo_Firefly_Carnival_Event_Artwork.jpg/revision/latest/scale-to-width-down/1000?cb=20201221052234")
    static let name = "钟离"
    static let location = "LiYue"
    
    static var previews: some View {
        HeaderPost(profileURL: profileURL, name: name, location: location)
    }
}

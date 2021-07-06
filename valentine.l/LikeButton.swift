//
//  LikeButton.swift
//  valentine.l
//
//  Created by jpo on 06/07/2021.
//

import SwiftUI

struct LikeButton: View {
    @Binding var isLiked: Bool
    
    var body: some View {
        Button(action: {
            isLiked.toggle()
        }, label: {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .imageScale(.large)
                .foregroundColor(isLiked ? Color.red : Color.primary)
        })
    }
}

struct LikeButton_Previews: PreviewProvider {
    
//    @State private static var testBool = false
    
    static var previews: some View {
        Group {
            LikeButton(isLiked: .constant(true))
            LikeButton(isLiked: .constant(false))
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}

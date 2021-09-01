//
//  PostCard.swift
//  Design Code Demo
//
//  Created by Алишер Алсейт on 12.08.2021.
//

import SwiftUI

struct PostCard: View {
    var body: some View {
        
        VStack (alignment: .leading) {
            
            Image("beach")
                .resizable()
                .aspectRatio(1, contentMode: .fill)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            HStack {
                Image("profile-post-icon-heart")
                Text("2,983")
                    .font(.caption)
            }
            
            HStack {
                Image("profile-post-icon-comment")
                Text("2,983")
                    .font(.caption)
            }
        }
    }
}

struct PostCard_Previews: PreviewProvider {
    static var previews: some View {
        PostCard()
    }
}

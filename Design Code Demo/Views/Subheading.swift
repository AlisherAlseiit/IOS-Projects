//
//  Subheading.swift
//  Design Code Demo
//
//  Created by Алишер Алсейт on 12.08.2021.
//

import SwiftUI

struct Subheading: View {
    
    var subheadline: String
    var caption: String
    
    var body: some View {
        
        VStack (alignment: .leading) {
            Text(subheadline)
                .font(.subheadline)
            Text(caption)
                .font(.caption)
        }
        .padding(.top, 20)
    }
}

struct Subheading_Previews: PreviewProvider {
    static var previews: some View {
        Subheading(subheadline: "Top 5 Posts", caption: "By likes and comments")
    }
}

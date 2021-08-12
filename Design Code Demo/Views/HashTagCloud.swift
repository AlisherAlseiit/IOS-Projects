//
//  HashTagCloud.swift
//  Design Code Demo
//
//  Created by Алишер Алсейт on 12.08.2021.
//

import SwiftUI
import WrappingStack

struct HashTagCloud: View {
    
    let tags = ["dog", "cat", "unicorn", "dolphin", "dragon", "hippo", "raccoon", "bird", "snake", "tiger", "eagle", "hamster", "possum"]
    var body: some View {
        
        WrappingHStack (id: \.self, alignment: .leading, horizontalSpacing: 5, verticalSpacing: 5) {
            
            ForEach(tags, id: \.self) { tag in
                
                Text("#\(tag)")
                    .padding(3)
                    .background(Color.white)
                    .cornerRadius(5)
                    .font(.caption)
            }
        }
    }
}

struct HashTagCloud_Previews: PreviewProvider {
    static var previews: some View {
        HashTagCloud()
    }
}

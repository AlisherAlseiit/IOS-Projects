//
//  MetricCard.swift
//  Design Code Demo
//
//  Created by Алишер Алсейт on 11.08.2021.
//

import SwiftUI

struct MetricCard: View {
    
    var number: String
    var caption: String
    var icon: String
    
    var body: some View {
        ZStack (alignment: .leading){
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
                .aspectRatio(1, contentMode: .fit)
                .shadow(color: Color("dropshadow-blue"), radius: 4, x: 0, y: 3)
            
            VStack (alignment: .leading, spacing: 3){
                Image(icon)
                Spacer()
                Text(number)
                    .font(.metricNumber)
                Text(caption)
                    .font(.metricCaption)
            }
            .padding(10)
        }
    }
}

struct MetricCard_Previews: PreviewProvider {
    static var previews: some View {
        MetricCard(number: "23,923", caption: "Total Comments", icon: "profile-metric-icon-comment")
    }
}

//
//  MetricCardBar.swift
//  Design Code Demo
//
//  Created by Алишер Алсейт on 12.08.2021.
//

import SwiftUI

struct MetricCardBar: View {
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.white)
                .shadow(color: Color("dropshadow-blue"), radius: 4, x: 0, y: 3)
            
            let colSize = GridItem(.flexible(), spacing: 0, alignment: .center)
            
            LazyVGrid(columns: Array(repeating: colSize, count: 4)) {
                
                ForEach(0..<4) { index in
                    
                    VStack(spacing: 7) {
                        Text("29")
                            .font(.metricNumber)
                        Text("Photos")
                            .font(.metricCaption)
                    }
                    
                }
              
                
            }
            .padding(.horizontal)
            
        }
        .frame(height: 56)
    }
}

struct MetricCardBar_Previews: PreviewProvider {
    static var previews: some View {
        MetricCardBar()
    }
}

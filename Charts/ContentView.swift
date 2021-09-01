//
//  ContentView.swift
//  Charts
//
//  Created by Алишер Алсейт on 17.08.2021.
//

import SwiftUI
import SwiftUICharts

struct ContentView: View {
    var body: some View {
        
        LineView(data: [8,23,54,32,12,37,7,23,43], title: "Line chart", legend: "- $2,221,90")
            .padding()
        
        // legend is optional, use optional .padding()

            
        
        // legend is optional

        
       


        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

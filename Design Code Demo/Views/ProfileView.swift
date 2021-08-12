//
//  ContentView.swift
//  Design Code Demo
//
//  Created by Алишер Алсейт on 11.08.2021.
//

import SwiftUI

struct ProfileView: View {
    let colSize = GridItem(.flexible(minimum: 10), spacing: 15, alignment: .center)
    
    var body: some View {
        
        
        ZStack(alignment: .leading) {
            
            Color("background-gray")
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading) {
                    
                    
                    HStack {
                        VStack (alignment: .leading) {
                            Text("Profile Analytics")
                                .fixedSize()
                                .font(.title)
                            Text("@codewithchris")
                                .font(.subheadline)
                        }
                        Spacer()
                        Image("logo")
                            .aspectRatio(contentMode: .fill)
                            .frame(height: 60)
                            .clipShape(Circle())
                        
                        
                    }
                    Spacer()
                    
                    // MARK: - Basic Stats
                    Group {
                        Subheading(subheadline: "Vasic Stats", caption: "")
                        
                        
                        
                        LazyVGrid(columns: Array(repeating: colSize, count: 3), content: {
                            
                            // Card
                            MetricCard(number: "12,193", caption: "Follower Count", icon: "profile-metric-icon-follows")
                            MetricCard(number: "505", caption: "Total Posts", icon: "profile-metric-icon-posts")
                            MetricCard(number: "2,193", caption: "Engagement Rate", icon: "profile-metric-icon-engagement")
                            
                        })
                    }
                    // MARK: - In the last 30 days
                    Group {
                        Subheading(subheadline: "In The Last 30 Days", caption: "")
                        
                        MetricCardBar()
                        
                        LazyVGrid(columns: Array(repeating: colSize, count: 3), content: {
                            
                            // Card
                            MetricCard(number: "12,193", caption: "Total Likes", icon: "profile-metric-icon-like")
                            MetricCard(number: "505", caption: "Total Comments", icon: "profile-metric-icon-comment")
                            MetricCard(number: "3:30 PM", caption: "Usual Time of Posting", icon: "profile-metric-icon-day")
                            
                        })
                        .padding(.top, 8)
                        
                        LazyVGrid(columns: Array(repeating: colSize, count: 3), content: {
                            
                            // Card
                            MetricCard(number: "193", caption: "Avg Likes Per Post", icon: "profile-metric-icon-like")
                            MetricCard(number: "505", caption: "Avg Comments Per Post", icon: "profile-metric-icon-comment")
                            MetricCard(number: "Friday", caption: "Usual Day of Posting", icon: "profile-metric-icon-time")
                            
                        })
                        .padding(.top, 8)
                    }
                    
                    // MARK: - 30 Most Used Hashtags
                    Group {
                        HStack {
                            Subheading(subheadline: "30 Most Used Hashtags", caption: "")
                            Spacer()
                            Button {
                                // TODO: Copy hastags
                            } label: {
                                HStack {
                                    Image(systemName: "doc.on.doc.fill")
                                    Text("Copy hashtags")
                                        .font(.caption)
                                    
                                }
                                .foregroundColor(Color("main-blue"))
                                
                            }
                            
                        }
                        
                        HashTagCloud()
                    }
                    
                    // MARK: - Top 5 posts
                    Group {
                        Subheading(subheadline: "Top 5 Posts", caption: "By Likes and Comments")
                        
                        LazyVGrid(columns: Array(repeating: colSize, count: 3)) {
                            
                            ForEach (0..<3) { index in
                                
                                PostCard()
                            }
                        }
                        
                        LazyVGrid(columns: Array(repeating: colSize, count: 3)) {
                            
                            ForEach (0..<2) { index in
                                
                                PostCard()
                            }
                        }
                    }
                    
                    // MARK: - Common Hashtags
                    Group {
                        HStack {
                            Subheading(subheadline: "Common Hashtags", caption: "Of the Top 5 Posts")
                            Spacer()
                            Button {
                                // TODO: Copy hastags
                            } label: {
                                HStack {
                                    Image(systemName: "doc.on.doc.fill")
                                    Text("Copy hashtags")
                                        .font(.caption)
                                    
                                }
                                .foregroundColor(Color("main-blue"))
                                
                            }
                            
                        }
                        
                        HashTagCloud()
                    }
                    
                    Spacer()
                }
            }
            .padding(.horizontal)
        }
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

//
//  FeedView.swift
//  YouTubeApp
//
//  Created by Yacobu.Gaddala on 04/12/24.
//

import SwiftUI

struct FeedView: View {
    @State private var videos = [Video]()
    @State private var selectedVideo: Video?
    var body: some View {
        List(videos) { v in
            VideoRowView(video: v)
                .listRowSeparator(.hidden)
                .onTapGesture {
                    selectedVideo = v
                }
            
        }
        .listStyle(.plain)
        .scrollIndicators(.hidden)
        .task {
            self.videos   = await DataService().getVideo()
        }
        .sheet(item: $selectedVideo) { video in
            VideoDetailView(video: video)
        }
        
    }
}

#Preview {
    FeedView()
}

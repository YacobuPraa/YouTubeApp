//
//  VideoDetailView.swift
//  YouTubeApp
//
//  Created by Yacobu.Gaddala on 04/12/24.
//

import SwiftUI


struct VideoDetailView: View {
    var video: Video
    var body: some View {
        ScrollView {
            VStack(alignment:.leading,spacing: 16) {
                Text(video.snippet?.title ?? "")
                    .font(.headline)
                    .bold()
                
                Text(video.snippet?.description ?? "")
            }
        }
        .scrollIndicators(.hidden)
        .padding()
    }
}


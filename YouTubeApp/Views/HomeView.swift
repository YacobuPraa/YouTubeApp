//
//  ContentView.swift
//  YouTubeApp
//
//  Created by Yacobu.Gaddala on 04/12/24.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "play.square.stack")
                    Text("Feed")
                }
        }
        
    }
}

#Preview {
    HomeView()
}

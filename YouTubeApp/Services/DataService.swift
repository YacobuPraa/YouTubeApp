//
//  DataService.swift
//  YouTubeApp
//
//  Created by Yacobu.Gaddala on 04/12/24.
//

import Foundation

struct DataService {
    private let apiKey = Bundle.main.infoDictionary?["API_KEY"] as? String
    
    func getVideo() async -> [Video] {
        
        guard apiKey != nil else {
            return [Video]()
        }
        let urlString = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=PLMRqhzcHGw1ZHtM5xYcZbJ8oUZ0aVTasI&key=\(apiKey!)"
        let url = URL(string: urlString)
        
        if let url = url {
            let request = URLRequest(url: url)
            let session = URLSession.shared
            do {
               let (data, _) = try await session.data(for: request)
                let decoder = JSONDecoder()
                
                let playLists = try decoder.decode(PlayList.self, from: data)
                return playLists.items
                
            }catch {
                print(error)
            }
        }
        
        
        return [Video]()
    }
}

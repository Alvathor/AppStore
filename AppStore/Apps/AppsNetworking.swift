//
//  AppsNetworking.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 31/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import Foundation
import Service

struct AppsNetworking {
    
    fileprivate let request = Request()

    func fetchGames(completion: @escaping ([ResultsApps]) -> Void, onError: @escaping (String) -> Void) {        
        guard let urlString = URL(string: "https://rss.itunes.apple.com/api/v1/us/ios-apps/new-games-we-love/all/50/explicit.json") else { return }
        request.serviceAPI(method: .get, url: urlString, json: nil) { (result: Result<ReturnApps, Error>) in
            switch result {
            case .failure(let err):
                onError(err.localizedDescription)
            case .success(let resp):
                guard let obj = resp.feed?.results?.compactMap({$0}) else { return }                
                completion(obj)
            }
        }
    }
}

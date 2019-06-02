//
//  SearchViewModel.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 04/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import Foundation

protocol CreateSearchViewModel {
    func toViewModel() -> SearchViewModel
}

class SearchViewModel {
    
    let trackName: String?
    let primaryGenreName: String?
    let averageUserRatingForCurrentVersion: Float?
    let screenshotUrls: [String]?
    let artworkUrl100: String?
    
    init(results: Results) {
        self.trackName = results.primaryGenreName
        self.primaryGenreName = results.trackName
        self.averageUserRatingForCurrentVersion = results.averageUserRatingForCurrentVersion
        self.screenshotUrls = results.screenshotUrls
        self.artworkUrl100 = results.artworkUrl100
    }
    
}

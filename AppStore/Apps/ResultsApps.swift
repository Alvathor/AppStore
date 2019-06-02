//
//  ResultsApps.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 01/06/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import Foundation

struct ResultsApps : Codable, CreateAppsViewModel {
    let artistName : String?
    let id : String?
    let releaseDate : String?
    let name : String?
    let kind : String?
    let copyright : String?
    let artistId : String?
    let artistUrl : String?
    let artworkUrl100 : String?
    let genres : [Genres]?
    let url : String?
    
    func toViewModel() -> AppsVM {
        return AppsVM.init(resultsApps: self)
    }
}

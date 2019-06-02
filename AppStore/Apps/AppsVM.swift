//
//  AppsVM.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 01/06/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import Foundation

protocol CreateAppsViewModel {
    func toViewModel() -> AppsVM
}

class AppsVM {    
    let artistName: String?
    let icon: String?
    
    init(resultsApps: ResultsApps) {
        self.artistName = resultsApps.artistName
        self.icon = resultsApps.artworkUrl100
    }
}

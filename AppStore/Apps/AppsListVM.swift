//
//  AppsListVM.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 01/06/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import Foundation

class AppsListVM {
    
    fileprivate let netowrking = AppsNetworking()
    
    var appsVM = [AppsVM]()
    var resultsApps: [ResultsApps]! {
        didSet {
            convertToViewModel()
        }
    }
    
    func fetchListOfApps(success: @escaping() -> Void, onError: @escaping(String) -> Void ) {
        netowrking.fetchGames(completion: { [weak self] (resultsApps) in
            self?.resultsApps = resultsApps            
            success()
        }) { (err) in
            onError(err)
        }
    }
    
    fileprivate func convertToViewModel() {
        appsVM.removeAll()
        resultsApps.forEach({appsVM.append($0.toViewModel())})
    }
}

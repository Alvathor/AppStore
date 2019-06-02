//
//  SearchListViewModel.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 04/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import Foundation

class SearchListViewModel {
    
    fileprivate let networking = SearchNetworking()
    
    var searchViewModel = [SearchViewModel]()
    
    fileprivate var results: [Results]! {
        didSet {
            convertToViewModel()
        }
    }
    
    func fetchData(searchFor: String, success: @escaping() -> (), onError: @escaping(String) -> Void) {
        networking.fetchItunesApps(searchFor: searchFor, { [weak self] (resp) in
            self?.results = resp
            success()
        }) { (err) in
            onError(err)
        }
    }
    
    fileprivate func convertToViewModel() {
        searchViewModel.removeAll()
        results.forEach({ searchViewModel.append($0.toViewModel())})        
    }
    
    var count: Int {
        return results?.count ?? 0
    }
}

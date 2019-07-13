//
//  SearchNetworking.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 03/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import Foundation
import Service

struct SearchNetworking {
    
    fileprivate let request = Request()
   
    func fetchItunesApps(searchFor: String, _ completion: @escaping([Results]) -> Void, onError: @escaping(String) -> Void ) {
        
        let url = request.buildURLQuery(path: .search, itemsKey: ["term", "entity"], itemsValue: [searchFor, "software"])
        request.serviceAPI(method: .get, url: url, json: nil) { (result : Result<BaseReturn, Error>) in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let resp):
                guard let obj = resp.results?.compactMap({$0}) else { return }    
                completion(obj)
            }
        }        
    }    
}

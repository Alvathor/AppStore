//
//  SearchNetworking.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 03/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import Foundation
import Service

class SearchNetworking {
    
    fileprivate let request = Request()
   
    func fetchItunesApps(searchFor: String, _ completion: @escaping([Results]) -> Void, onError: @escaping(String) -> Void ) {
        
        let url = request.buildURLQuery(path: .search, itemsKey: ["term", "entity"], itemsValue: [searchFor, "software"])
        request.serviceAPI(method: .get, url: url, json: nil) { (result: BaseReturn?, success) in
            guard let resp = result, let results = resp.results, success == true else {                
                let msg = "Failed connection" //server msg
                onError(msg)
                return
            }
            
            let compactResults = results.compactMap({$0})
            completion(compactResults)
        }
    }    
}

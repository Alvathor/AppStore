//
//  Request.swift
//  PiratesShip
//
//  Created by Juliano Alvarenga on 25/03/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import Foundation
import UIKit

final public class Request: UIViewController {
    
    public func buildURLNoQuery(path: BuildURL) -> URL {
        var urlComponent = URLComponents()
        urlComponent.scheme = BuildURL.sheme.rawValue
        urlComponent.host = BuildURL.host.rawValue
        urlComponent.path = path.rawValue
        
        return urlComponent.url!
    }
    
    public func buildURLQuery(path: BuildURL, itemsKey: [String], itemsValue: [String]) -> URL {
        var urlComponent = URLComponents()
        urlComponent.scheme = BuildURL.sheme.rawValue
        urlComponent.host = BuildURL.host.rawValue
        urlComponent.path = path.rawValue
        var queryItems = [URLQueryItem]()
        
        for (_itemKey, _itemValue) in zip(itemsKey, itemsValue) {
            let queryItem = URLQueryItem(name: _itemKey, value: _itemValue)
            queryItems.append(queryItem)
        }
        urlComponent.queryItems = queryItems
        return urlComponent.url!
    }
    
    //MARk: - Setup URLSession
    private var urlSession: URLSession = {
        let configuration = URLSessionConfiguration.default
        configuration.allowsCellularAccess = true
        configuration.httpShouldSetCookies = true
        configuration.httpShouldUsePipelining = true
        configuration.requestCachePolicy = .useProtocolCachePolicy
        configuration.timeoutIntervalForRequest = 30.0
        configuration.urlCache = URLCache(memoryCapacity: 0, diskCapacity: 0, diskPath: nil)
        
        return  URLSession(configuration: configuration)
    }()       
    
    
    //MARK: - Defining Content
    fileprivate func defineContentType(method: MethodHTTP, url: URL) -> URLRequest {
        var request = URLRequest(url: url)
        request.httpMethod = method.rawValue
        switch method {
        case .get:
            request.setValue(ContentType.get.rawValue, forHTTPHeaderField: "Content-Type")
        case .post:
            request.setValue(ContentType.postPutDel.rawValue, forHTTPHeaderField: "Content-Type")
            return request
        case .put:
            request.setValue(ContentType.postPutDel.rawValue, forHTTPHeaderField: "Content-Type")
            return request
        case .del:
            request.setValue(ContentType.postPutDel.rawValue, forHTTPHeaderField: "Content-Type")
            return request
        }        
        return request
    }
    
    public func serviceAPI<T:Codable>(method: MethodHTTP, url: URL, json: Data?, completion: @escaping(Result<T, Error>) -> Void) {
        var request = defineContentType(method: method, url: url)
        if let json = json {
            request.httpBody = json
        }
        let configuration = URLSessionConfiguration.default
        let urlSession = URLSession(configuration: configuration)
        urlSession.dataTask(with: request) { (data, resp, error) in
            guard let httpResp = resp as? HTTPURLResponse else { return }
            guard error == nil, 200...299 ~= httpResp.statusCode else {
                guard let err = error else { return }
                completion(.failure(err))
                return
            }
            do {
                guard let hasData = data else { return }
                let obj = try JSONDecoder().decode(T.self, from: hasData)
                completion(.success(obj))
            } catch let err {
                completion(.failure(err))
                debugPrint(err.localizedDescription)
            }
        }.resume()
    }
}

public enum MethodHTTP: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case del = "DELETE"
}

enum ContentType: String {
    case get = "application/x-www-form-urlencoded"
    case postPutDel = "application/json"
}

public enum BuildURL: String {
    case sheme = "https"
    case host = "itunes.apple.com"
    case search = "/search"    
}

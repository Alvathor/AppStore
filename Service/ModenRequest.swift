//
//  ModenRequest.swift
//  Common
//
//  Created by Juliano Alvarenga on 23/04/19.
//

import Foundation

//class ProductLoader {
//    private let urlSession: URLSession
//
//    init(urlSession: URLSession = .shared) {
//        self.urlSession = urlSession
//    }
//
//    func loadProduct(withID id: Product.ID) -> Future<Product> {
//        let endpoint = Endpoint.product(withID: id)
//        return urlSession.request(endpoint).decoded()
//    }
//}



class ProductLoader {
//    typealias Networking = (Endpoint) -> Future<Data>
//    private let networking: Networking
//
//    init(networking: @escaping Networking = URLSession.shared.request) {
//        self.networking = networking
//    }
//
//    func loadProduct(withID id: Product.ID) -> Future<Product> {
//        let endpoint = Endpoint.product(withID: id)
//        return networking(endpoint).decoded()
//    }
    
    func combine<A, B>(_ value: A, with closure: @escaping (A) -> B) -> () -> B {
        return { closure(value) }
    }
    
    func chain<A, B, C>(_ inner: @escaping (A) -> B, to outer: @escaping (B) -> C) -> (A) -> C {
        return { outer(inner($0)) }
    }
    
    func chain2<A, B, C>(_ inner: @escaping (A) -> B, to outer: @escaping (B) -> () -> C ) -> (A) -> C {
        // Similar to our previous version of chain, we pass the result
        // of the inner function into the outer one — but since that
        // now returns another function, we'll also call that one.
        return { outer(inner($0))() }
    }
}

let product = ProductLoader()


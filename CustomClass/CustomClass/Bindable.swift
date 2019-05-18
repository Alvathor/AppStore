//
//  Bindable.swift
//  Tinder
//
//  Created by Juliano Alvarenga on 04/03/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import Foundation

open class Bindable<T> {
    
    public init()  {}
    
    public var value: T? {
        didSet {
            observer?(value)
        }
    }
    
    public var observer: ((T?) -> ())?
    
    public func bind(observer: @escaping (T?) -> ()) {
        self.observer = observer
    }
}

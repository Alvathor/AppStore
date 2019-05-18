//
//  AppSearchVCComponents.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 05/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit

struct AppSearchVCComponents {
    
    let emptySearchLabel: UILabel = {
        let c = UILabel()
        c.text = "Type to sarch your app"
        c.textAlignment = .center
        c.textColor = .darkGray
        c.font = UIFont.systemFont(ofSize: 17, weight: .heavy)
        return c
    }()    
}

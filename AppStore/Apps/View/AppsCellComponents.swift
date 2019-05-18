//
//  AppsCellComponents.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 05/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit

struct AppsCellComponents {
    
    let titleLabel: UILabel = {
        let c = UILabel()
        c.text = "App Section"
        c.font = .boldSystemFont(ofSize: 30)
        return c
    }()
}

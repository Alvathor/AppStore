//
//  AppsHeaderCellComponents.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 30/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit

struct AppsHeaderCellComponents {
    
    let mainStackView: UIStackView = {
        let c = UIStackView()
        c.axis = .vertical
        return c
    }()
    
    let companyLabel: UILabel = {
        let c = UILabel()
        c.text = "Facebook"
        c.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        c.textColor = .blue
        return c
    }()
    
    let titleLabel: UILabel = {
        let c = UILabel()
        c.text = "Keeping up with friends is faster than ever"
        c.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        c.numberOfLines = 2
        return c
    }()
    
    let companyImage: UIImageView = {
        let c = UIImageView()
        c.layer.cornerRadius = 8
        c.clipsToBounds = true
        c.backgroundColor = .red
        return c
    }()
}

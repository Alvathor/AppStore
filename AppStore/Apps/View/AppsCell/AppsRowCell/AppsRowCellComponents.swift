//
//  AppsRowCellComponents.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 23/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit

struct AppsRowCellComponents {
    
    let mainStackView: UIStackView = {
        let c = UIStackView()
        c.alignment = .center
        return c
    }()
            
    let logoImage: UIImageView = {
        let c = UIImageView()
        c.contentMode = .scaleAspectFill
        c.layer.cornerRadius = 12
        c.clipsToBounds = true
        return c
    }()
    
    let midleStackview: UIStackView = {
        let c = UIStackView()
        c.axis = .vertical
        return c
    }()
    
    let nameLabel: UILabel = {
        let c = UILabel()
        c.text = "App Name"
        c.font = UIFont.systemFont(ofSize: 20)
        return c
    }()
    
    let companyLabel: UILabel = {
        let c = UILabel()
        c.text = "Companny Name"
        c.font = UIFont.systemFont(ofSize: 13)
        return c
    }()
    
    let getButton: UIButton = {
        let c = UIButton()
        c.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        c.setTitle("GET", for: .normal)
        c.setTitleColor(#colorLiteral(red: 0.1215686275, green: 0.1294117647, blue: 0.1411764706, alpha: 1), for: .normal)
        c.backgroundColor = #colorLiteral(red: 0.9562498927, green: 0.9562721848, blue: 0.9562601447, alpha: 1)
        c.layer.cornerRadius = 8
        c.clipsToBounds = true
        return c
    }()
}

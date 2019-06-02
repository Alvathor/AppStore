//
//  SearchCellComponents.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 03/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit
import Common

struct SearchCellComponents {
    
    let overallStackView: UIStackView = {
        let c = UIStackView()
        c.axis = .vertical
        c.spacing = 16
        return c
    }()
    
    let infoStackView: UIStackView = {
        let c = UIStackView()
        c.spacing = 12
        c.alignment = .center
        return c
    }()
    
    let appIconImageView: UIImageView = {
        let c = UIImageView()
        c.widthAnchor.constraint(equalToConstant: 64).isActive = true
        c.heightAnchor.constraint(equalToConstant: 64).isActive = true
        c.layer.cornerRadius = 12
        c.clipsToBounds = true
        return c
    }()
        
    let labelStackView: UIStackView = {
        let c = UIStackView()
        c.axis = .vertical
        return c
    }()
    
    let nameLabel: UILabel = {
        let c = UILabel()
        c.text = "App name"
        return c
    }()
    
    let categoryLabel: UILabel = {
        let c = UILabel()
        c.text = "Photos & Videos"
        return c
    }()
    
    let ratingLabel: UILabel = {
        let c = UILabel()
        c.text = "9.26M"
        return c
    }()        
    
    let getButton: UIButton = {
        let c = UIButton(type: .system)
        c.setTitle("GET", for: .normal)
        c.titleLabel?.font = UIFont.systemFont(ofSize: 13, weight: .heavy)
        c.setTitleColor(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), for: .normal)
        c.widthAnchor.constraint(equalToConstant: 80).isActive = true
        c.backgroundColor = #colorLiteral(red: 0.9450980392, green: 0.9450980392, blue: 0.9450980392, alpha: 1)
        c.layer.cornerRadius = 12
        return c
    }()
    
    let screenshotsStackView: UIStackView = {
        let c = UIStackView()
        c.axis = .horizontal
        c.spacing = 8
        c.distribution = .fillEqually
        return c
    }()
    
    let screenShotOne: UIImageView = {
        let c = UIImageView()        
        return c
    }()
    
    let screenShotTwo: UIImageView = {
        let c = UIImageView()
        return c
    }()
    
    let screenShotThree: UIImageView = {
        let c = UIImageView()
        return c
    }()
    
    func configureScreenshotsView(_ imagesViews: [UIImageView]) -> [UIImageView] {
        imagesViews.forEach { (img) in
            img.contentMode = .scaleAspectFill
            img.clipsToBounds = true
            img.layer.cornerRadius = 8
            img.layer.borderColor = UIColor(white: 0.5, alpha: 0.5).cgColor
            img.layer.borderWidth = 0.5
        }        
        return imagesViews
    }
    
    func builVerticalStackView(_ stackComponents: [UIView], spacing: CGFloat) -> VerticalStackView {
        return VerticalStackView(arrangedSubviews: stackComponents, spacing: spacing)
    } 
}

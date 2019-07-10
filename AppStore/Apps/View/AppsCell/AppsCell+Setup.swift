//
//  AppsCell+Setup.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 05/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit

extension AppsCell {
    
    func setupLayout() {
        backgroundColor = .white
        fileprivateSetupTitle()
        setupHorizontalController()
    }
    
    fileprivate func fileprivateSetupTitle() {
        addSubview(c.titleLabel)
        c.titleLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 0, left: 16, bottom: 0, right: 0))
    }
    
    fileprivate func setupHorizontalController() {        
        addSubview(appsCellVC.view)
        appsCellVC.view.anchor(top: c.titleLabel.bottomAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
    }
    
}

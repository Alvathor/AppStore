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
        addSubview(c.titleLabel)
        c.titleLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor)
    }
    
}

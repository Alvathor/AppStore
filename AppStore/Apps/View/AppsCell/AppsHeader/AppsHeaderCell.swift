//
//  AppsHeaderCell.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 30/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit

class AppsHeaderCell: UICollectionViewCell {
    
    let c = AppsHeaderCellComponents()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(c.mainStackView)        
        c.mainStackView.addArrangedSubview(c.companyLabel)
        c.mainStackView.addArrangedSubview(c.titleLabel)
        c.mainStackView.addArrangedSubview(c.companyImage)        
        c.mainStackView.fillSuperview(padding: .init(top: 16, left: 0, bottom: 16, right: 0))
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

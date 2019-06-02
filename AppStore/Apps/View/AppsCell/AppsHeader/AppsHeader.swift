//
//  AppsHeader.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 30/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit

class AppsHeader: UICollectionReusableView {
    
    let headerController = AppsHeaderVC()
    
    override init(frame: CGRect) {
        super.init(frame: frame)        
        addSubview(headerController.view)
        headerController.view.fillSuperview()
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    static var king: String {
        return UICollectionView.elementKindSectionHeader
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

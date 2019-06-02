//
//  AppsVC+Setup.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 05/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit

extension AppsVC {
    
    func setupLayout() {
        setupCollectionView()
        collectionView.backgroundColor = .white
    }
    
    fileprivate func setupCollectionView() {
        collectionView.register(AppsCell.self, forCellWithReuseIdentifier: AppsCell.identifier)
        collectionView.register(AppsHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: AppsHeader.identifier)        
    }
}

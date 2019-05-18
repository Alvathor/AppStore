//
//  AppsVC+Setup.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 05/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import Foundation

extension AppsVC {
    
    func setupLayout() {
        setupCollectionView()
    }
    
    fileprivate func setupCollectionView() {
        collectionView.register(AppsCell.self, forCellWithReuseIdentifier: AppsCell.identifier)
    }
}

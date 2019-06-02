//
//  AppsCellCollectionVC.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 22/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit
import CustomClass

class AppsCellCollectionVC: BasicCollectioView {
    
    var viewModel: AppsVM?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
        collectionView.register(AppsRowCell.self, forCellWithReuseIdentifier: AppsRowCell.identifier)
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
    }
}


//
//  BasicCollectioView.swift
//  CustomClass
//
//  Created by Juliano Alvarenga on 05/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit

open class BasicCollectioView: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    public init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//
//  AppsCell.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 05/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit

class AppsCell: UICollectionViewCell {
    
    let horitontalController = AppsCellCollectionVC()
    let c = AppsCellComponents()
    var viewModel: AppsVM! {
        didSet {            
            horitontalController.viewModel = self.viewModel
        }
    }
    
    static var identifier: String  {
        return String(describing: self)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)        
        setupLayout()        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

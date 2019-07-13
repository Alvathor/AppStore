//
//  AppsVC.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 05/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit
import CustomClass

class AppsVC: BasicCollectioView {
    
    let viewModel = AppsListVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
        fetchData()
    }
   
    fileprivate func fetchData() {
        viewModel.fetchListOfApps(success: { [weak self] in
            DispatchQueue.main.async { self?.collectionView.reloadData() }            
        }) { (err) in
            print(err)
        }
    }
}

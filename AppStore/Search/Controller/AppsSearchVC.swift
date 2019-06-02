//
//  AppsSearchVC.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 03/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit
import CustomClass

class AppsSearchVC: BasicCollectioView {
    
    let viewModel = SearchListViewModel()
    let c = AppSearchVCComponents()        

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    func fetchData(searchFor: String) {
        viewModel.fetchData(searchFor: searchFor, success: { [weak self] in            
            DispatchQueue.main.async { self?.collectionView.reloadData() }
        }) { (err) in
            print(err)
        }                   
    }
}

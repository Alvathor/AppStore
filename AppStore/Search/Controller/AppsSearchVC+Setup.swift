//
//  AppSearchVC+Setup.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 04/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit

extension AppsSearchVC {
    
    func setupLayout() {
        setupSearchBar()
        setupCollectioView()
        setupEmptySearchLabel()
        
    }
    
    fileprivate func setupEmptySearchLabel() {
        collectionView.addSubview(c.emptySearchLabel)
        c.emptySearchLabel.fillSuperview(padding: .init(top: 100, left: 0, bottom: 0, right: 0))
        c.emptySearchLabel.centerXAnchor.constraint(equalTo: collectionView.centerXAnchor).isActive = true
    }
    
    fileprivate func setupSearchBar() {
        let searchController = UISearchController(searchResultsController: nil)
        searchController.dimsBackgroundDuringPresentation = false
        searchController.delegate = self
        searchController.searchBar.delegate = self
        definesPresentationContext = true
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false

    }
    
    fileprivate func setupCollectioView() {
        collectionView.backgroundColor = .white
        collectionView.register(SearchResultCell.self, forCellWithReuseIdentifier: SearchResultCell.identifier)
    }
}

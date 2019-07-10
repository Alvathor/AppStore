//
//  AppsCellVC+Collection.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 23/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit

// MARK: - E X T E N S I O N - COLLECTIONVIEW

extension AppsCellVC {
    
    struct LayoutItem {
        static let topBottomPadding: CGFloat = 12
        static let lineSpacing: CGFloat = 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel?.count ?? 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AppsRowCell.identifier, for: indexPath) as! AppsRowCell
        cell.viewModel = viewModel?[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = (view.frame.height - 2 * LayoutItem.topBottomPadding - 2 * LayoutItem.lineSpacing) / 3
        return .init(width: view.frame.width - 48, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 12, left: 16, bottom: 12, right: 16)
    }
    
}

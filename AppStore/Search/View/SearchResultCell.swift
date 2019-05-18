//
//  SearchResultCell.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 03/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit
import Common
import SDWebImage
import CustomClass

class SearchResultCell: UICollectionViewCell {
    
    let c = SearchCellComponents()
    
    var searchViewModel: SearchViewModel! {
        didSet {
            setupLabels()
            fetchLogoImage()
            fetchScreanshotImages()
        }
    }
    
    fileprivate func setupLabels() {
        c.nameLabel.text = self.searchViewModel.trackName
        c.categoryLabel.text = self.searchViewModel.primaryGenreName
        c.ratingLabel.text = "\(self.searchViewModel.averageUserRatingForCurrentVersion ?? 0.0)"
    }
    
    fileprivate func fetchLogoImage() {
        guard let logoUrl = URL(string: self.searchViewModel.artworkUrl100 ?? "") else { return }
        c.appIconImageView.sd_setImage(with: logoUrl)
    }
    
    fileprivate func fetchScreanshotImages() {
        var urls = [URL]()
        var imagesViews = [UIImageView]()
        self.searchViewModel.screenshotUrls?.forEach({ (urlString) in
            guard let url = URL(string: urlString) else { return }
            urls.append(url)
        })
        
        imagesViews.append(c.screenShotOne)
        imagesViews.append(c.screenShotTwo)
        imagesViews.append(c.screenShotThree)
        
        for (image, url) in zip(imagesViews, urls) {
            image.sd_setImage(with: url)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
    }
    
    static var identifier: String {
        return String(describing: self)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

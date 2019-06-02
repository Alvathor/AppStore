//
//  SearchResultCell+Setup.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 03/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import Foundation

extension SearchResultCell {
    
    func setupLayout() {
        setupLabelStackView()
        setupInfoStackView()
        setupScreanShotsStackView()
        setupOverallStackView()
    }        
    
    fileprivate func setupLabelStackView() {
        c.labelStackView.addArrangedSubview(c.nameLabel)
        c.labelStackView.addArrangedSubview(c.categoryLabel)
        c.labelStackView.addArrangedSubview(c.ratingLabel)
    }
    
    fileprivate func setupInfoStackView() {
        c.infoStackView.addArrangedSubview(c.appIconImageView)
        c.infoStackView.addArrangedSubview(c.labelStackView)
        c.infoStackView.addArrangedSubview(c.getButton)
    }
    
    fileprivate func setupScreanShotsStackView() {
        let imgs = c.configureScreenshotsView([c.screenShotOne, c.screenShotTwo, c.screenShotThree])
        imgs.forEach({c.screenshotsStackView.addArrangedSubview($0)})
    }
    
    fileprivate func setupOverallStackView() {
        c.overallStackView.addArrangedSubview(c.infoStackView)
        c.overallStackView.addArrangedSubview(c.screenshotsStackView)
        addSubview(c.overallStackView)
        c.overallStackView.fillSuperview(padding: .init(top: 16, left: 16, bottom: 16, right: 16))
    }
}

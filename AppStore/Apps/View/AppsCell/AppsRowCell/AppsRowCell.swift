//
//  AppsRowCell.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 23/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit
import SDWebImage

class AppsRowCell: UICollectionViewCell {
    
    let c = AppsRowCellComponents()
    var viewModel: AppsVM! {
        didSet {
           setupIon()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    fileprivate func setupIon() {
        c.logoImage.sd_setImage(with: URL(string: viewModel.icon ?? ""))
    }
    
    fileprivate func setupView() {
        addSubview(c.mainStackView)
        c.mainStackView.anchor(top: nil, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor)
        c.mainStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        c.mainStackView.spacing = 8
        c.mainStackView.addArrangedSubview(c.logoImage)
        c.logoImage.backgroundColor = .black
        c.logoImage.constraintWidth(constant: 64)
        c.logoImage.constraintHeight(constant: 64)
        c.mainStackView.addArrangedSubview(c.midleStackview)
        c.midleStackview.addArrangedSubview(c.nameLabel)
        c.midleStackview.addArrangedSubview(c.companyLabel)
        c.mainStackView.addArrangedSubview(c.getButton)
        c.getButton.constraintWidth(constant: 60)
        c.getButton.constraintHeight(constant: 20)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    static var identifier: String {
        return String(describing: self)
    }
}

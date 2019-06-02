//
//  AppSearchVC+Search.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 04/05/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit

extension AppsSearchVC: UISearchBarDelegate, UISearchControllerDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchText.isEmpty {
            UIView.animate(withDuration: 0.3) {
                self.c.emptySearchLabel.transform = CGAffineTransform.init(scaleX: 1, y: 1)
                self.fetchData(searchFor: "")
            }
            return
        }
        
        UIView.animate(withDuration: 0.3) {
            self.c.emptySearchLabel.transform = CGAffineTransform.init(scaleX: 0, y: 0)
        }
        //throttling the search
        var timer: Timer?
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { (_) in            
            self.fetchData(searchFor: searchText)
        }
        
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        UIView.animate(withDuration: 0.3) {
            self.c.emptySearchLabel.transform = CGAffineTransform.init(scaleX: 1, y: 1)
            self.fetchData(searchFor: "")
        }
    }
}

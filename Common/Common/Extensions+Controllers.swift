//
//  Extensions+Controllers.swift
//  PiratesShip
//
//  Created by Juliano Alvarenga on 25/03/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit

public extension UIViewController {
    
    func commonAimpleAlert(_ titleAlert: String?, _ messageAlert: String?, titleButton: String?) {
        let alertControler = UIAlertController(title: titleAlert, message: messageAlert, preferredStyle: .alert)
        alertControler.addAction(UIAlertAction(title: titleButton, style: .default, handler: nil))
        DispatchQueue.main.async {
            self.present(alertControler, animated: true)
        }
    }
    
    func commonAnimateActivity(_ shouldAnimate: Bool, _activityIndicator: UIActivityIndicatorView?, _refreshIndicator: UIRefreshControl?) {
        DispatchQueue.main.async {
            if shouldAnimate {
                _activityIndicator?.startAnimating()
                _refreshIndicator?.beginRefreshing()
            } else {
                _activityIndicator?.stopAnimating()
                _refreshIndicator?.endRefreshing()
            }
        }
    }
    
    func commonBuildTabViewControllers(controller: UIViewController, _ title: String, _ tabBarTitle: String, _ tabBarIcon: UIImage) -> UINavigationController {
        controller.title = title
        let navController = UINavigationController(rootViewController: controller)
        navController.tabBarItem.title = tabBarTitle
        navController.tabBarItem.image = tabBarIcon
        navController.navigationBar.prefersLargeTitles = true
        return navController        
    }
    
}

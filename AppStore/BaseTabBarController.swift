//
//  BaseTabBarController.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 28/04/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit
import Common

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        creatingControllers()
    }
    
    func creatingControllers() {
        let today = commonBuildTabViewControllers(controller: UIViewController(), "Today", "Today", #imageLiteral(resourceName: "today_icon"))
        let apps = commonBuildTabViewControllers(controller: AppsVC(), "Apps", "Aspp", #imageLiteral(resourceName: "apps"))
        let search = commonBuildTabViewControllers(controller: AppsSearchVC(), "Search", "Search", #imageLiteral(resourceName: "search"))
        viewControllers = [apps, today, search]
        viewControllers?.forEach({$0.view.backgroundColor = .white})
     
    }    
}

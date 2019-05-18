//
//  AppDelegate.swift
//  AppStore
//
//  Created by Juliano Alvarenga on 28/04/19.
//  Copyright © 2019 Juliano Alvarenga. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupRootWindow()
        return true
    }

    fileprivate func setupRootWindow() {
        window = UIWindow()
        window?.makeKeyAndVisible()
        window?.rootViewController = BaseTabBarController()
    }
}

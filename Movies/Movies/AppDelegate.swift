//
//  AppDelegate.swift
//  Movies
//
//  Created by BTG Pactual on 26/08/20.
//  Copyright © 2020 Felipe Melo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window

        let coordinator = AppFlowCoordinator(window: window)
        coordinator.start()

        return true
    }


}


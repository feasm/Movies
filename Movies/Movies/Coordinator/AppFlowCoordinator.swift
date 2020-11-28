//
//  AppFlowCoordinator.swift
//  Movies
//
//  Created by BTG Pactual on 28/11/20.
//  Copyright © 2020 Felipe Melo. All rights reserved.
//

import UIKit

class AppFlowCoordinator: Coordinator {

    var window: UIWindow?
    var navigationController: UINavigationController?

    init(window: UIWindow) {
        self.window = window
        self.navigationController = UINavigationController()

        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
    }

    func start() {
        let coordinator = MovieListCoordinator(navigationController: navigationController, delegate: self)
        coordinator.start()
    }

}

extension AppFlowCoordinator: MovieListCoordinatorDelegate {
    func showCategoriesScreen() {
        let coordinator = MovieCategoriesCoordinator(navigationController: navigationController, delegate: self)
        coordinator.start()
    }

    func showFavouriteScreen() {
        let viewController = UIViewController()
        viewController.title = "Favoritos"

        navigationController?.pushViewController(viewController, animated: true)
    }
}

extension AppFlowCoordinator: MovieCategoriesCoordinatorDelegate {

}

//
//  AppFlowCoordinator.swift
//  Movies
//
//  Created by BTG Pactual on 28/11/20.
//  Copyright © 2020 Felipe Melo. All rights reserved.
//

import UIKit

class AppCoordinator: Coordinator {

    var window: UIWindow?
    var navigationController: UINavigationController?

    init(window: UIWindow) {
        self.window = window
        self.navigationController = UINavigationController()

        self.window?.rootViewController = navigationController
        self.window?.makeKeyAndVisible()
    }

    func start() {
        let presenter = MovieListPresenter(coordinator: self)
        let interactor = MovieListInteractor(presenter: presenter)
        let viewController = MovieListViewController(interactor: interactor)
        presenter.viewController = viewController

        navigationController?.pushViewController(viewController, animated: true)
    }

}

extension AppCoordinator: MovieListCoordinatorDelegate {
    func showCategoriesScreen() {
        let viewController = UIViewController()
        viewController.title = "Categorias"

        navigationController?.pushViewController(viewController, animated: true)
    }

    func showFavouriteScreen() {
        let viewController = UIViewController()
        viewController.title = "Favoritos"

        navigationController?.pushViewController(viewController, animated: true)
    }
}

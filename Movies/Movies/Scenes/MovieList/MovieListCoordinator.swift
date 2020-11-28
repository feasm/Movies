//
//  MovieListCoordinator.swift
//  Movies
//
//  Created by BTG Pactual on 28/11/20.
//  Copyright © 2020 Felipe Melo. All rights reserved.
//

import UIKit

protocol MovieListCoordinatorDelegate: class {
    func showCategoriesScreen()
    func showFavouriteScreen()
}

protocol MovieListCoordinatorProtocol: class {
    func showCategoriesScreen()
    func showFavouriteScreen()
}

class MovieListCoordinator: Coordinator {

    var navigationController: UINavigationController?
    var delegate: (MovieListCoordinatorDelegate & Coordinator)?

    init(navigationController: UINavigationController?, delegate: MovieListCoordinatorDelegate & Coordinator) {
        self.navigationController = navigationController
        self.delegate = delegate
    }

    func start() {
        let presenter = MovieListPresenter(coordinator: self)
        let interactor = MovieListInteractor(presenter: presenter)
        let viewController = MovieListViewController(interactor: interactor)
        presenter.viewController = viewController

        navigationController?.pushViewController(viewController, animated: true)
    }

}

extension MovieListCoordinator: MovieListCoordinatorProtocol {
    func showCategoriesScreen() {
        delegate?.showCategoriesScreen()
    }

    func showFavouriteScreen() {
        delegate?.showFavouriteScreen()
    }
}

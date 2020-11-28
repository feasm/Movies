//
//  MovieListPresenter.swift
//  Movies
//
//  Created by BTG Pactual on 28/11/20.
//  Copyright © 2020 Felipe Melo. All rights reserved.
//

import Foundation

protocol MovieListPresenterProtocol {
    func showCategoriesScreen()
    func showFavouriteScreen()
}

class MovieListPresenter: MovieListPresenterProtocol {

    var viewController: MovieListViewControllerProtocol?
    private var coordinator: MovieListCoordinatorProtocol?

    init(coordinator: MovieListCoordinatorProtocol) {
        self.coordinator = coordinator
    }

    func showCategoriesScreen() {
        coordinator?.showCategoriesScreen()
    }

    func showFavouriteScreen() {
        coordinator?.showFavouriteScreen()
    }

}

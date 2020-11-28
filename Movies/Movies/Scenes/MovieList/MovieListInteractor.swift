//
//  MovieListInteractor.swift
//  Movies
//
//  Created by BTG Pactual on 28/11/20.
//  Copyright © 2020 Felipe Melo. All rights reserved.
//

import Foundation

protocol MovieListInteractorProtocol {
    func didTapCategoriesButton()
    func didTapFavouriteButton()
}

class MovieListInteractor: MovieListInteractorProtocol {

    private var presenter: MovieListPresenterProtocol?

    init(presenter: MovieListPresenterProtocol) {
        self.presenter = presenter
    }

    func didTapCategoriesButton() {
        presenter?.showCategoriesScreen()
    }

    func didTapFavouriteButton() {
        presenter?.showFavouriteScreen()
    }

}

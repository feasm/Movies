//
//  MovieListViewController.swift
//  Movies
//
//  Created by BTG Pactual on 28/11/20.
//  Copyright © 2020 Felipe Melo. All rights reserved.
//

import UIKit

protocol MovieListViewControllerProtocol {

}

class MovieListViewController: UIViewController {

    private var contentView = MovieListView()
    private var interactor: MovieListInteractor?

    init(interactor: MovieListInteractor) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

    override func loadView() {
        super.loadView()
        view = contentView
        title = "Lista de Filmes"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup() {
        setupButtons()
    }

    private func setupButtons() {
        contentView.categoriesButton.addTarget(self, action: #selector(didTapCategoriesButton), for: .touchUpInside)
        contentView.favouriteButton.addTarget(self, action: #selector(didTapFavouriteButton), for: .touchUpInside)
    }

    @objc private func didTapCategoriesButton() {
        interactor?.didTapCategoriesButton()
    }

    @objc private func didTapFavouriteButton() {
        interactor?.didTapFavouriteButton()
    }

}

// MARK: - MovieListViewControllerProtocol

extension MovieListViewController: MovieListViewControllerProtocol {

}

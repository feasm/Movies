//
//  MovieCategoriesCoordinator.swift
//  Movies
//
//  Created by BTG Pactual on 28/11/20.
//  Copyright © 2020 Felipe Melo. All rights reserved.
//

import UIKit

protocol MovieCategoriesCoordinatorDelegate: class {

}

protocol MovieCategoriesCoordinatorProtocol: class {

}

class MovieCategoriesCoordinator: Coordinator {

    var navigationController: UINavigationController?
    var delegate: (MovieCategoriesCoordinatorDelegate & Coordinator)?

    init(navigationController: UINavigationController?, delegate: (MovieCategoriesCoordinatorDelegate & Coordinator)) {
        self.navigationController = navigationController
        self.delegate = delegate
    }

    func start() {
        let viewController = UIViewController()
        viewController.title = "Categorias"

        navigationController?.pushViewController(viewController, animated: true)
    }

}

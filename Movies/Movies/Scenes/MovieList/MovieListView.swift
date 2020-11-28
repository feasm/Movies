//
//  MovieListView.swift
//  Movies
//
//  Created by BTG Pactual on 28/11/20.
//  Copyright © 2020 Felipe Melo. All rights reserved.
//

import UIKit
import SnapKit

class MovieListView: UIView {

    lazy var categoriesButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Categorias", for: .normal)

        return button
    }()

    lazy var favouriteButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemBlue
        button.setTitle("Favoritos", for: .normal)

        return button
    }()

    init() {
        super.init(frame: UIScreen.main.bounds)
        setupViewCode()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}

// MARK: - ViewCodeConfiguration

extension MovieListView: ViewCodeConfiguration {
    func setupViewHierarchy() {
        addSubview(categoriesButton)
        addSubview(favouriteButton)
    }

    func setupConstraints() {
        categoriesButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(40)
            make.leading.equalToSuperview().inset(28)
            make.trailing.equalToSuperview().inset(28)
        }

        favouriteButton.snp.makeConstraints { make in
            make.top.equalTo(categoriesButton.snp.bottom).offset(16)
            make.height.equalTo(40)
            make.leading.equalToSuperview().inset(28)
            make.trailing.equalToSuperview().inset(28)
        }
    }

    func configureViews() {
        backgroundColor = .white
    }
}

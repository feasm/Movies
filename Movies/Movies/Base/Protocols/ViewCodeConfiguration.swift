//
//  ViewCodeConfiguration.swift
//  Movies
//
//  Created by BTG Pactual on 28/11/20.
//  Copyright © 2020 Felipe Melo. All rights reserved.
//

import Foundation

protocol ViewCodeConfiguration {
    func setupViewCode()
    func setupViewHierarchy()
    func setupConstraints()
    func configureViews()
}

extension ViewCodeConfiguration {
    func setupViewCode() {
        setupViewHierarchy()
        setupConstraints()
        configureViews()
    }
}

//
//  Coordinator.swift
//  Movies
//
//  Created by BTG Pactual on 28/11/20.
//  Copyright © 2020 Felipe Melo. All rights reserved.
//

import UIKit

protocol Coordinator {
    var navigationController: UINavigationController? { get }
    func start()
}

//
//  InitialViewCoordinator.swift
//  mvvmproject
//
//  Created by Gustavo Ludtke on 7/2/18.
//  Copyright © 2018 Nodo Digital. All rights reserved.
//

import UIKit

class InitialViewCoordinator: Coordinator {
    private let presenter: UINavigationController
    private var initialViewController: InitialViewController?
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
    }
    
    func start() {
        let initialViewController = InitialViewController()
        presenter.pushViewController(initialViewController, animated: true)
        
        self.initialViewController = initialViewController
    }
}

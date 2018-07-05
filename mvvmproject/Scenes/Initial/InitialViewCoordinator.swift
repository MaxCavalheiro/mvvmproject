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
    private let initialViewController: InitialViewController
    private let initialInterctor: InitialViewInteractor
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
        initialInterctor = InitialViewInteractor()
        initialViewController = InitialViewController(interector: initialInterctor)
    }
    
    func start() {
        initialInterctor.delegate = self
        presenter.pushViewController(initialViewController, animated: true)
    }
}

extension InitialViewCoordinator: InitialViewCoordinatorProtocol {
    
    func changeScreen(_ toScreen: Bool) {
        if toScreen == true {
            let tableViewCoordinator = TableViewCoordinator(presenter: presenter)
            tableViewCoordinator.start()
        } else {
            //Other ViewController
        }
    }
}

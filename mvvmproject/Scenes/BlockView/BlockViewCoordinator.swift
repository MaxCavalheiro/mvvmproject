//
//  BlockViewCoordinator.swift
//  mvvmproject
//
//  Created by Gustavo Ludtke on 7/5/18.
//  Copyright © 2018 Nodo Digital. All rights reserved.
//

import Foundation
import UIKit

class BlockViewCoordinator: Coordinator {
    private let presenter: UINavigationController
    private let blockViewController: BlockViewController
    private let blockViewInteractor: BlockViewInteractor
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
        blockViewInteractor = BlockViewInteractor()
        blockViewController = BlockViewController(interactor: blockViewInteractor)
    }
    
    func start() {
        blockViewInteractor.delegate = self
        presenter.pushViewController(blockViewController, animated: true)
    }
}

extension BlockViewCoordinator: BlockViewCoordinatorProtocol {
    func pressedButton() {
        let tableViewCoordinator = TableViewCoordinator(presenter: presenter)
        tableViewCoordinator.start()
    }
}

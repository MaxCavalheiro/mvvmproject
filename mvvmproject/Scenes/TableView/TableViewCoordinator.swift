//
//  TableViewCoordinator.swift
//  mvvmproject
//
//  Created by Gustavo Ludtke on 7/3/18.
//  Copyright © 2018 Nodo Digital. All rights reserved.
//

import Foundation
import UIKit

class TableViewCoordinator: Coordinator {
    
    private let presenter: UINavigationController
    private let tableViewController: TableViewController
    private let tableViewInteractor: TableViewInteractor
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
        tableViewInteractor = TableViewInteractor()
        tableViewController = TableViewController(interector: tableViewInteractor)
    }
    
    func start() {
        tableViewInteractor.delegateCoordinator = self
//        tableViewInteractor.delegate = tableViewController
        presenter.pushViewController(tableViewController, animated: true)
    }
}

extension TableViewCoordinator: TableViewInterectorPushDetail {
    
    func pushToDetailViewController(data: TableViewModel) {
        let coordinator = TableViewDetailCoordinator(presenter: presenter, data: data)
        coordinator.start()
    }
}

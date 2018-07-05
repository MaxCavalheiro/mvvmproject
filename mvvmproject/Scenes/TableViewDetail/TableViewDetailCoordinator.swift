//
//  TableViewDetailCoordinator.swift
//  mvvmproject
//
//  Created by Nodo Digital on 05/07/18.
//  Copyright © 2018 Nodo Digital. All rights reserved.
//

import Foundation
import UIKit

class TableViewDetailCoordinator : Coordinator {
    
    private let presenter: UINavigationController
    private let tableViewDetailController: TableViewDetailController
    private let tableViewDetailInteractor: TableViewDetailInteractor
    
    init(presenter: UINavigationController, data: TableViewModel) {
        self.presenter = presenter
        tableViewDetailInteractor = TableViewDetailInteractor()
        tableViewDetailController = TableViewDetailController(interactor: tableViewDetailInteractor, data: data)
        tableViewDetailController.data = data
    }
    
    func start() {
        presenter.pushViewController(tableViewDetailController, animated: true)
    }
    
}

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
    
    init(presenter: UINavigationController) {
        self.presenter = presenter
    }
    
    func start() {
        let tableViewController = TableViewController()
        presenter.pushViewController(tableViewController, animated: true)
    }
}

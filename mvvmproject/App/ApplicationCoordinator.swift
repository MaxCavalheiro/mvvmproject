//
//  AppCoordinator.swift
//  mvvmproject
//
//  Created by Gustavo Ludtke on 7/2/18.
//  Copyright © 2018 Nodo Digital. All rights reserved.
//

import Foundation
import UIKit

class  ApplicationCoordinator: Coordinator {
    let window: UIWindow
    let rootViewController: UINavigationController
    let initialViewCoordinator: InitialViewCoordinator
    
    init (window: UIWindow) {
        self.window = window
    
        rootViewController = UINavigationController()
        rootViewController.view.backgroundColor = .white
        
        initialViewCoordinator = InitialViewCoordinator(presenter: rootViewController)
    }
    
    func  start() {
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
        initialViewCoordinator.start()
    }
}

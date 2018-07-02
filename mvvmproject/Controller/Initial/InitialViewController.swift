//
//  ViewController.swift
//  mvvmproject
//
//  Created by Gustavo Ludtke on 6/29/18.
//  Copyright © 2018 Nodo Digital. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {
    private let interactor: InitialViewInteractor = InitialViewInteractor()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func startButton(_ sender: Any) {
        interactor.startButtonPressed()
    }
    
}


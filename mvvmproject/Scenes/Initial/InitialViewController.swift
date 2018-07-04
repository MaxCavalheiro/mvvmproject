//
//  ViewController.swift
//  mvvmproject
//
//  Created by Gustavo Ludtke on 6/29/18.
//  Copyright © 2018 Nodo Digital. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {
    
    fileprivate let interactor: InitialViewInteractor

    init(interector: InitialViewInteractor) {
        self.interactor = interector
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func startButton(_ sender: Any) {
        interactor.startButtonPressed()
    }
    
}


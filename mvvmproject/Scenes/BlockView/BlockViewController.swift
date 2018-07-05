//
//  BlockViewController.swift
//  mvvmproject
//
//  Created by Gustavo Ludtke on 7/5/18.
//  Copyright © 2018 Nodo Digital. All rights reserved.
//

import UIKit

class BlockViewController: UIViewController {
    private let interactor: BlockViewInteractor
    
    init(interactor: BlockViewInteractor) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        interactor.buttonPressed()
    }
}

//
//  TableViewDetailController.swift
//  mvvmproject
//
//  Created by Nodo Digital on 05/07/18.
//  Copyright © 2018 Nodo Digital. All rights reserved.
//

import UIKit

class TableViewDetailController: UIViewController {
        
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var number: UILabel!
    
    private let interactor: TableViewDetailInteractor
    
    var data: TableViewModel
    
    init(interactor: TableViewDetailInteractor, data: TableViewModel) {
        self.interactor = interactor
        self.data = data
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadData()
    }
    
    private func loadData() {
        name.text = data.name
        number.text = data.number
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

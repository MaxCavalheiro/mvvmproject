//
//  TableViewController.swift
//  mvvmproject
//
//  Created by Gustavo Ludtke on 7/3/18.
//  Copyright © 2018 Nodo Digital. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension TableViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int { return 0 }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return 0 }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { return UITableViewCell() }
}

extension TableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { }
}

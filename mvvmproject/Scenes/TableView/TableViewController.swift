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
    private let interector: TableViewInteractor
    
    var data: [TableViewModel] = []
    
    init(interector: TableViewInteractor) {
        self.interector = interector
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupInterector()
        setupTableView()
        fetchTableListData()
    }
    
    private func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: ListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: ListTableViewCell.identifier)
    }
    
    private func setupInterector() {
        interector.delegate = self
    }
    
    private func fetchTableListData() {
        interector.fetchListData()
    }
    
    private func reloadTableView() {
        self.tableView.reloadData()
    }
}

extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return data.count }
    
    func numberOfSections(in tableView: UITableView) -> Int { return 1 }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: ListTableViewCell.identifier) as? ListTableViewCell {
            cell.name.text = data[indexPath.row].name
            cell.number.text = data[indexPath.row].number
            return cell
        }
        
        return UITableViewCell()
        
    }
}

extension TableViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        interector.cellSelected(data: data[indexPath.row])
    }
}

extension TableViewController: TableViewInterectorLoadData {
    
    func loadData(data: [TableViewModel]) {
        self.data = data
        self.reloadTableView()
    }
    
}

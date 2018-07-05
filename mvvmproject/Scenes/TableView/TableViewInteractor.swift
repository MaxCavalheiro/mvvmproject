//
//  TableViewInteractor.swift
//  mvvmproject
//
//  Created by Gustavo Ludtke on 7/4/18.
//  Copyright © 2018 Nodo Digital. All rights reserved.
//

import Foundation
import UIKit

protocol  TableViewInterectorLoadData: class {
    func loadData(data: [TableViewModel])
}

protocol  TableViewInterectorPushDetail: class {
    func pushToDetailViewController(data: TableViewModel)
}

class TableViewInteractor {
    
    weak var delegate: TableViewInterectorLoadData?
    var delegateCoordinator: TableViewInterectorPushDetail?
    
    func fetchListData() {
        TableViewWorker.takeData { tableViewModel in
            if let models = tableViewModel, models.count > 0 {
                self.delegate?.loadData(data: models)
            }
        }
    }
    
    func cellSelected(data: TableViewModel) {
        self.delegateCoordinator?.pushToDetailViewController(data: data)
    }
    
}

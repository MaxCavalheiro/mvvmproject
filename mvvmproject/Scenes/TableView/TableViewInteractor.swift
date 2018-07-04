//
//  TableViewInteractor.swift
//  mvvmproject
//
//  Created by Gustavo Ludtke on 7/4/18.
//  Copyright © 2018 Nodo Digital. All rights reserved.
//

import Foundation
import UIKit

class TableViewInteractor {
    func initializer() {
        //Call when the table view enters the scene (request function)
        TableViewWorker.takeData { tableViewModel in
            if let models = tableViewModel {
                //Data arrival successful
            }
        }
    }
    
    func numberOfPeople() {
        //Call when the table view is configuring the number of cells
    }
    
    func cellForRow() {
        //Call when the code will configure a cell
    }
    
    func cellSelected() {
        //Call when cell as selected in Table View
    }
    
}

//
//  TableViewCellController.swift
//  mvvmproject
//
//  Created by Gustavo Ludtke on 7/4/18.
//  Copyright © 2018 Nodo Digital. All rights reserved.
//

import Foundation
import UIKit

class TableViewCellController: UITableViewCell {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var number: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        name.text = nil
        number.text = nil
    }
    
}

//
//  TableViewModel.swift
//  mvvmproject
//
//  Created by Gustavo Ludtke on 7/4/18.
//  Copyright © 2018 Nodo Digital. All rights reserved.
//

import Foundation

struct TableViewModel: Decodable {
    let name: String
    let number: String
    
    private enum CodingKeys: String, CodingKey {
        case name
        case number = "number_test"
    }
}

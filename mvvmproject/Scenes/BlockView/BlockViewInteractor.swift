//
//  BlockViewInteractor.swift
//  mvvmproject
//
//  Created by Gustavo Ludtke on 7/5/18.
//  Copyright © 2018 Nodo Digital. All rights reserved.
//

import Foundation

protocol BlockViewCoordinatorProtocol: class {
    func pressedButton()
}

class BlockViewInteractor {
    
    var delegate: BlockViewCoordinatorProtocol?
    
    func buttonPressed() {
        delegate?.pressedButton()
    }
}

//
//  InitialViewInteractor.swift
//  mvvmproject
//
//  Created by Gustavo Ludtke on 7/2/18.
//  Copyright © 2018 Nodo Digital. All rights reserved.
//

import Foundation
import UIKit

protocol InitialViewCoordinatorProtocol: class {
    func changeScreen(_ toScreen: Bool)
}

class InitialViewInteractor {
    
    weak var delegate: InitialViewCoordinatorProtocol?
    
    func startButtonPressed() {
        InitialWorker.takeAccess { initialModel in
            if let model = initialModel {
                self.delegate?.changeScreen(model.access)
            }
        }
    }
}

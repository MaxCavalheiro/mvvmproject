//
//  InitialViewInteractor.swift
//  mvvmproject
//
//  Created by Gustavo Ludtke on 7/2/18.
//  Copyright © 2018 Nodo Digital. All rights reserved.
//

import Foundation
import UIKit

class InitialViewInteractor {
    
    func startButtonPressed() {
        InitialWorker.takeAccess { initialModel in
            if let model = initialModel, model.access == true {
                //Call table view screen coordinator
            } else {
                //Call "Tu é um lock" screen coordinator
            }
        }
    }
}

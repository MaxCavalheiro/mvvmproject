//
//  TableViewWorker.swift
//  mvvmproject
//
//  Created by Gustavo Ludtke on 7/4/18.
//  Copyright © 2018 Nodo Digital. All rights reserved.
//

import Foundation
import Alamofire
import CodableAlamofire

class TableViewWorker {
    
    static func takeData(_ completion: @escaping ([TableViewModel]?) -> Void) {
        
        Alamofire.request("https://demo0328439.mockable.io/tableview", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).validate().responseDecodableObject(keyPath: nil, decoder: JSONDecoder()) { (response: DataResponse<[TableViewModel]>) in
            
            completion(response.result.value)
        }
    }
}

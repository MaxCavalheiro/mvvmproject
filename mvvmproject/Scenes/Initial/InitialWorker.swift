//
//  InitialWorker.swift
//  mvvmproject
//
//  Created by Nodo Digital on 7/3/18.
//  Copyright © 2018 Gustavo Ludtke. All rights reserved.
//

import Alamofire
import CodableAlamofire
import Foundation

class InitialWorker {
    
    static func takeAccess(_ completion: @escaping (InitialModel?) -> Void) {
        Alamofire.request("https://demo0328439.mockable.io/access", method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).validate().responseDecodableObject(keyPath: nil, decoder: JSONDecoder()) { (response: DataResponse<InitialModel>) in
            
            completion(response.result.value)
        }
    }
    
    
    
}

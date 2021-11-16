//
//  PuntuarServ.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 09-11-21.
//

import Foundation
import Alamofire

func postRequest() {
    let parameters: [String: Any] = [
        "value" : 0
       
    ]
    AF.request("http://myserver.com", method:.post, parameters: parameters,encoding: JSONEncoding.default) .responseJSON { (response) in
        print(response)
    }
    
}



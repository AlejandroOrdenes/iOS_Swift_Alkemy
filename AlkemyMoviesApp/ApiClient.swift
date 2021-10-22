//
//  ApiClient.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 12-10-21.
//

import Foundation
import Alamofire



class ApiClient {

    

    func get(url: String, completion: @escaping (Result<Data?, AFError>) -> Void) {

        AF.request(url).response { response in

            completion(response.result)

        }

    }

}

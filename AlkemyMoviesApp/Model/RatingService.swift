//
//  RatingService.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 06-11-21.
//

import Foundation
class RatingService {
   

    let apiClient = ApiClient()

    func getSessionJSON(completion: @escaping ([TokenJSON]) -> Void) {
        let autentication = "https://api.themoviedb.org/3/authentication/guest_session/new?api_key=b058732597d2de022d6fd33cbc9ba36c"
        apiClient.get(url: autentication) { response in
            switch response {
            case .success(let data):

                do {
                    if let data = data {
                        print("DATA", data)
                        let autent = try JSONDecoder().decode(TokenJSON.self, from: data)
                        completion([autent])
                       
                        
                    }
                } catch {
                    completion([])
                    print("Fallo!!")
                }
            case .failure(_):
                completion([])
            }
        }
    }
}

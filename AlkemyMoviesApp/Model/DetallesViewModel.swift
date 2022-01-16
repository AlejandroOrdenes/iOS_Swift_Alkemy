//
//  DetallesViewModel.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 20-10-21.
//

import UIKit


class DetallesViewModel {
    private var ratingService: RatingService
    var token = [TokenJSON]()
    

    init(service: RatingService) {
            self.ratingService = service
    }
    
    
    func getTokenServ(completion: @escaping () -> Void) {
        ratingService.getSessionJSON { token in
            self.token = token
            return completion()
            
        }
    }
    
    func getIndex(index: Int) -> TokenJSON {
        token[index]
    }

    func getIdSession() -> String{
        return getIndex(index: token.count).guest_session_id

    }
    

    
}


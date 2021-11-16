//
//  DataToken.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 06-11-21.
//

import Foundation

struct TokenJSON: Codable {
    
    var success: Bool
    var guest_session_id: String
    var expires_at: String
}


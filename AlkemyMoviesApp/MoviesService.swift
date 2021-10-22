//
//  MoviesService.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 12-10-21.
//

import Foundation

class MoviesService {
   

    let apiClient = ApiClient()

    func getMoviesJSON(completion: @escaping ([MoviesJson]) -> Void) {
        let moviesURL = "https://api.themoviedb.org/3/movie/popular?api_key=b058732597d2de022d6fd33cbc9ba36c&language=en-US&page=1"
        apiClient.get(url: moviesURL) { response in
            switch response {
            case .success(let data):

                do {
                    if let data = data {
                        let movies = try JSONDecoder().decode(Movies.self, from: data)
                        completion(movies.results)
                        
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

//
//  InitialViewModel.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 12-10-21.
//

import Foundation

class InitialViewModel {
    
    private var moviesService: MoviesService
    var movies = [MoviesJson]()
    
    init(service: MoviesService) {
        self.moviesService = service
    }
    
    
    func getMoviesServ(completion: @escaping () -> Void) {
        moviesService.getMoviesJSON { movies in
            self.movies = movies
            return completion()
        }
    }
    
    func getMoviesCount() -> Int {
        movies.count
    }
    
    func getMovieIndex(at index: Int) -> MoviesJson {
        movies[index]
    }
    
    
}

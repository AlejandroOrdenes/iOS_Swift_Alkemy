//
//  FavoritasViewModel.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 21-10-21.
//

import UIKit


class FavoritasViewModel {
    private var moviesService: MoviesService
    var movies = [MoviesJson]()
    
    
    
    
    
    init(service: MoviesService) {
        self.moviesService = service
    }
    
    
    
    func getMoviesServ(completion: @escaping  () -> Void) { //Obtener categorias del servicio y se almacenan en el viewModel
        moviesService.getMoviesJSON { movies in
            self.movies = movies
            return completion()
        }
    }
    
    func getMovieIndex(at index: Int) -> MoviesJson  { // Devuelve la categoria de la posicion Index ??????????
        movies[index]

    }
    
    func getCount() -> Int {
        movies.count
    }
        
    

    
}

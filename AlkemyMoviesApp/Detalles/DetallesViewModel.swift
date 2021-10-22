//
//  DetallesViewModel.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 20-10-21.
//

import UIKit


class DetallesViewModel {
    let moviesService: MoviesService
    var movieDetallesModel: [MoviesJson]

    init(service: MoviesService, model: [MoviesJson]) {
            self.moviesService = service
            self.movieDetallesModel = model
    }
    
  
//    func getMoviesServ(completion: @escaping () -> Void) {
//        moviesService.getMoviesJSON { movies in
//            self.movieDetallesModel = movies
//            return completion()
//        }
//    }
//    func getImage(from: IndexPath) -> UIImage {
//        let imgURL = URL(string: "https://image.tmdb.org/t/p/w500" + imageUrl)!
//        if let data = try? Data(contentsOf: imgURL) {
//               let imageMovie = UIImage(data: data)
//            return imageMovie!
//           }
//    }
    
    func getTitle(at index: Int) -> String {
        movieDetallesModel[index].title
    }
    
    func getDate(at index: Int) -> String {
        movieDetallesModel[index].release_date
    }
    
    func getLanguage(at index: Int) -> String {
        movieDetallesModel[index].original_language
    }
    
    func getDescription(at index: Int) -> String {
        movieDetallesModel[index].overview
    }
    
    func getAverage(at index: Int) -> Double {
        movieDetallesModel[index].vote_average
    }
    
}


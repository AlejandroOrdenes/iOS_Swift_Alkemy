////
////  DetallesViewModel.swift
////  AlkemyMoviesApp
////
////  Created by Alejandro O. on 20-10-21.
////
//
//import UIKit
//
//
//class DetallesViewModel {
//    let moviesService: MoviesService
//    var movieDetallesModel = [MoviesJson]()
//    
//
//    init(service: MoviesService) {
//            self.moviesService = service
//    }
//    
//    
//  
//    func getMoviesServ(completion: @escaping () -> Void) {
//        moviesService.getMoviesJSON { movies in
//            self.movieDetallesModel = movies
//            return completion()
//        }
//    }
//
//
//    
//    func getTitle(at index: Int) -> String {
//        movieDetallesModel[index].title
//    }
//    
//    func getDate(at index: Int) -> String {
//        movieDetallesModel[index].release_date
//    }
//    
//    func getLanguage(at index: Int) -> String {
//        movieDetallesModel[index].original_language
//    }
//    
//    func getDescription(at index: Int) -> String {
//        movieDetallesModel[index].overview
//    }
//    
//    func getAverage(at index: Int) -> Double {
//        movieDetallesModel[index].vote_average
//    }
//    
////    func getUrlImage(at index: Int) -> String {
////        
////    }
//    
//}


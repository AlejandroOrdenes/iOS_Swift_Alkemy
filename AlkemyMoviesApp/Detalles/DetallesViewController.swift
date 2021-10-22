//
//  DetallesViewController.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 19-10-21.
//

import UIKit

class DetallesViewController: UIViewController {
    var movieDetalles = [MoviesJson]()
    var viewModel: DetallesViewModel!
    
    @IBOutlet weak var imageMovie: UIImageView!
    @IBOutlet weak var titleMovie: UILabel!
    @IBOutlet weak var descriptionMovie: UILabel!
    @IBOutlet weak var ratingMovie: UILabel!
    @IBOutlet weak var idiomMovie: UILabel!
    @IBOutlet weak var dateMovie: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel = DetallesViewModel(service: MoviesService(), model: [MoviesJson]())
//
//        let stringImage = viewModel.getUrlImage(at: 0)
////        let imgURL = URL(string: "https://image.tmdb.org/t/p/w500" + stringImage)
//
//        if let data = try? Data(contentsOf: imgURL!) {
//              imageMovie.image = UIImage(data: data)
//          }
        viewModel.movieDetallesModel.append(contentsOf: movieDetalles)
        
        titleMovie.text = viewModel.getTitle(at: 0)
        print("MOVIE_DETALLES",movieDetalles)
        descriptionMovie?.text = viewModel.getDescription(at: 0)
        idiomMovie?.text = "Language: " + viewModel.getLanguage(at: 0)
        dateMovie?.text = "Release Date: " + viewModel.getDate(at: 0)
        ratingMovie?.text = "Average: " + String(viewModel.getAverage(at: 0)) + " / 10 "
    
    
    }
    
    @IBAction func voteButton(_ sender: Any) {
        
    }
    
    @IBAction func addFavoritesButton(_ sender: Any) {
        
//        let favoritasViewController = FavoritasViewController()
//        favoritasViewController.titulo.append(movie.title)
//        favoritasViewController.imagenURL.append(movie.poster_path)
        
        let alert = UIAlertController(title: "Add to Favorites", message: "Movie Added", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        print("Se agrego")
        
    }
    
}

       
    



//
//  DetallesViewController.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 19-10-21.
//

import UIKit

class DetallesViewController: UIViewController {
    
    var movieDetails: MoviesJson!
    var listMovies = [MoviesJson]()
    
    @IBOutlet weak var imageMovie: UIImageView!
    @IBOutlet weak var titleMovie: UILabel!
    @IBOutlet weak var descriptionMovie: UILabel!
    @IBOutlet weak var ratingMovie: UILabel!
    @IBOutlet weak var idiomMovie: UILabel!
    @IBOutlet weak var dateMovie: UILabel!
    
    private let key = "favMovie"
   
    
    override func viewDidLoad() {
         super.viewDidLoad()
        
        let imageUrl = URL(string: "https://image.tmdb.org/t/p/w500" + movieDetails.backdrop_path)!

        if let data = try? Data(contentsOf: imageUrl) {
              imageMovie.image = UIImage(data: data)
          }
        
        titleMovie.text = movieDetails.title
        dateMovie.text = "Release Date: " + movieDetails.release_date
        idiomMovie.text = "Language: " + movieDetails.original_language.uppercased()
        descriptionMovie.text = movieDetails.overview
        ratingMovie.text = "Average: " + String(movieDetails.vote_average) + " / 10"
        
     
     }
    
   
    
    @IBAction func voteButton(_ sender: Any) {

    }
    
    @IBAction func addFavoritesButton(_ sender: Any) {

        
        let alert = UIAlertController(title: "Add to Favorites", message: "Movie Added", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        print("Se agrego")

        
    }

}

       
    



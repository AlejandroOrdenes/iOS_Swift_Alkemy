//
//  DetallesViewController.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 19-10-21.
//

import UIKit

class DetallesViewController: UIViewController {
    var movieDetail = [MoviesJson]()
    
    var imgURL: String = ""
    var titulo: String = ""
    var fecha: String = ""
    var idioma: String = ""
    var descripcion: String = ""
    var puntaje: String = ""
    
    @IBOutlet weak var imageMovie: UIImageView!
    @IBOutlet weak var titleMovie: UILabel!
    @IBOutlet weak var descriptionMovie: UILabel!
    @IBOutlet weak var ratingMovie: UILabel!
    @IBOutlet weak var idiomMovie: UILabel!
    @IBOutlet weak var dateMovie: UILabel!
    
    override func viewDidLoad() {
         super.viewDidLoad()
           
        let imageUrl = URL(string: "https://image.tmdb.org/t/p/w500" + imgURL)!

        if let data = try? Data(contentsOf: imageUrl) {
              imageMovie.image = UIImage(data: data)
          }
        
        titleMovie.text = titulo
        dateMovie.text = "Release Date: " + fecha
        idiomMovie.text = "Language: " + idioma.uppercased()
        descriptionMovie.text = descripcion
        ratingMovie.text = "Average: " + puntaje + " / 10"
        
     
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

       
    



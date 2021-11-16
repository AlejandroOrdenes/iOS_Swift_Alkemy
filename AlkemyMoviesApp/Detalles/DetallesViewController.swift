//
//  DetallesViewController.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 19-10-21.
//

import UIKit

class DetallesViewController: UIViewController {
    var movieDetails: MoviesJson!
    var detallesView: DetallesViewModel!
    var idMovies = [Int]()
    
    
    @IBOutlet weak var imageMovie: UIImageView!
    @IBOutlet weak var titleMovie: UILabel!
    @IBOutlet weak var descriptionMovie: UILabel!
    @IBOutlet weak var ratingMovie: UILabel!
    @IBOutlet weak var idiomMovie: UILabel!
    @IBOutlet weak var dateMovie: UILabel!
    
    private let key = "favMovie"
   
    
    override func viewDidLoad() {
         super.viewDidLoad()
        self.detallesView = DetallesViewModel(service: RatingService())
        
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
        
        
        
        detallesView.getTokenServ(){
            print(self.detallesView.token)
        }
        
//        let idSession = detallesView.getIdSession()
        
        
        
    }
    
    @IBAction func addFavoritesButton(_ sender: Any) {
//        if var list = UserDefaults.standard.array(forKey: "favMovie") == nil {
//            
//        }
//        list?.append(movieDetails.id)
//        UserDefaults.standard.set(idMovies, forKey: "favMovie")
//        UserDefaults.standard.synchronize()
        
        
        
//        let ext = UserDefaults()
//        favView.
//        favView.listMovie.insert(movieDetails)
//        print("LISTAAA",favView.listMovie)
//        ext.setMoviesUserDefault(favView.listMovie, forKey: "favMovie")
//        UserDefaults.standard.synchronize()
        
        
        let alert = UIAlertController(title: "Add to Favorites", message: "Movie Added", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
//        print("Se agrego")

        
    }
    

   

}



extension UserDefaults {
    func getMovieUserDefault(forKey defaultName: String) -> Set<MoviesJson>? {
        guard let data = data(forKey: defaultName) else { return nil }
        do {
            return try JSONDecoder().decode(Set<MoviesJson>.self, from: data)
        } catch { print(error); return nil }
    }

    func setMoviesUserDefault(_ value: Set<MoviesJson>, forKey defaultName: String) {
        let data = try? JSONEncoder().encode(value)
        set(data, forKey: defaultName)
    }
}
       
    



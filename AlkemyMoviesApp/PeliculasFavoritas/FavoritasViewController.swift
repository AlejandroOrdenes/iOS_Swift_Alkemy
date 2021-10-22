//
//  FavoritasViewController.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 20-10-21.
//

import UIKit

class FavoritasViewController: UIViewController {
    
    var titulo: [String]!
    var imagenURL: [String]!
    
    var favoritesMovies = [MoviesJson]()
    var favoritesViewModel: FavoritasViewModel!

    @IBOutlet weak var favoritasTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.favoritasTableView.dataSource = self
        self.favoritasTableView.delegate = self
        self.favoritasTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cellFavorites")
        
    }




}

extension FavoritasViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = favoritasTableView.dequeueReusableCell(withIdentifier: "cellFavorites", for: indexPath)
    
//        cell.textLabel!.text = favoritesViewModel.getMovieIndex(at: indexPath.row).title
//        print(titulo!)
//        print(imagenURL!)
        
//        let imgURL = URL(string: "https://image.tmdb.org/t/p/w500" + favoritesViewModel.getMovieIndex(at: indexPath.row).poster_path)
//
//        if let data = try? Data(contentsOf: imgURL!) {
//            cell.imageView?.image = UIImage(data: data)
//          }
//
        return cell
    }
    
}

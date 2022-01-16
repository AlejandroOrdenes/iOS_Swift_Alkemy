//
//  FavoritasViewController.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 20-10-21.
//

import UIKit

class FavoritasViewController: UIViewController {
    let ext = UserDefaults()
    var favorites: MoviesJson!
    var listFavoritas = [MoviesJson]()

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
        return 10
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = favoritasTableView.dequeueReusableCell(withIdentifier: "cellFavorites", for: indexPath)
        
        
        return cell
    }
    
//    func getMovieIndexInitial(at index: Int) -> [MoviesJson] {
//
//    }
}

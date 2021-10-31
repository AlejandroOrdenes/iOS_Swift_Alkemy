//
//  InitialViewController.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 12-10-21.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet weak var tableViewMovies: UITableView!
    
    var viewModel: InitialViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.viewModel = InitialViewModel(service: MoviesService())
        self.tableViewMovies.dataSource = self
        self.tableViewMovies.delegate = self
        self.tableViewMovies.register(CustomCell.self, forCellReuseIdentifier: "cell")
        getMovies()
        
    }
    
    func getMovies() {
        viewModel.getMoviesServ() {
            self.tableViewMovies.reloadData()
            
        }
    }

}
extension InitialViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableViewMovies.deselectRow(at: indexPath, animated: true)
        showMovies(for: viewModel.getMovieIndexInitial(at: indexPath.row))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       viewModel.getMoviesCount()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 360
    }
    
  
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableViewMovies.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let movies = viewModel.movies[indexPath.row]
        
        guard let customCell = cell as? CustomCell else {
            return cell
        }

        customCell.nameLabel.textColor = UIColor.white
        customCell.nameLabel.text = movies.title
        customCell.backgroundColor = UIColor.black
        
        if let url = URL(string: "https://image.tmdb.org/t/p/w500\(movies.poster_path)") {
            customCell.imageIV.loadImageView(from: url)
        }
//        print(movies)
        return cell
    }
    
   
    private func showMovies(for movies: MoviesJson) {

        let detallesVC = DetallesViewController(nibName: "DetallesViewController", bundle: nil)
        detallesVC.movieDetails = movies
        
        navigationController?.pushViewController(detallesVC, animated: true)
    }
}




//
//  TabBarViewController.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 20-10-21.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstTabTitle = "Movies"
        let firstTabImage = UIImage(systemName: "list.dash")
        let firstTabViewController = InitialViewController(nibName: "InitialViewController", bundle: nil)
        firstTabViewController.title = firstTabTitle
        let firstTabNavigationController = UINavigationController(rootViewController: firstTabViewController)
        firstTabNavigationController.tabBarItem = UITabBarItem(title: firstTabTitle, image: firstTabImage, selectedImage: nil)
        
        
        let secondTabTitle = "Favorites"
        let secondTabImage = UIImage(systemName: "star")
        let secondTabViewController = FavoritasViewController(nibName: "FavoritasViewController", bundle: nil)
        secondTabViewController.title = secondTabTitle
        let secondTabNavigationController = UINavigationController(rootViewController: secondTabViewController)
        secondTabNavigationController.tabBarItem = UITabBarItem(title: secondTabTitle, image: secondTabImage, selectedImage: nil)
        
        viewControllers = [firstTabNavigationController, secondTabNavigationController]
        
    }
}

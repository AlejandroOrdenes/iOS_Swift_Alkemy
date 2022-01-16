//
//  CustomImageView.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 17-10-21.
//
import UIKit

let imageCache = NSCache<AnyObject, AnyObject>()

class CustomImageView: UIImageView {
    var task: URLSessionDataTask!
    func loadImageView(from url: URL) {
        image = nil
        
        if let task = task {
            task.cancel()
        }
        
        if let imageFromCache = imageCache.object(forKey: url.absoluteString as AnyObject) as? UIImage {
            self.image = imageFromCache
            return
        } 
        
        task = URLSession.shared.dataTask(with: url) {(data, response, error) in
        
            guard
                let data = data,
                let newImage = UIImage(data: data)
            else {
                print("No carga la url desde \(url)")
                return
            }
        
            imageCache.setObject(newImage, forKey: url.absoluteString as AnyObject)
        
            DispatchQueue.main.async {
                self.image = newImage
            }
           }
        
        task.resume()
    }
}

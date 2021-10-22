//
//  CustomCell.swift
//  AlkemyMoviesApp
//
//  Created by Alejandro O. on 15-10-21.
//

import UIKit

class CustomCell: UITableViewCell {
    var safeArea: UILayoutGuide!
    let imageIV = CustomImageView()
    let nameLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:)NO esta implementado!!!")
    }
    
    func setupView() {
        safeArea = layoutMarginsGuide
        setupImageView()
        setupNameLabel()
    }

    func setupImageView() {
        addSubview(imageIV)

        imageIV.translatesAutoresizingMaskIntoConstraints = false
        imageIV.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        imageIV.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        imageIV.widthAnchor.constraint(equalToConstant: 170).isActive = true
        imageIV.heightAnchor.constraint(equalToConstant: 270).isActive = true
        
    }

    func setupNameLabel() {
        addSubview(nameLabel)
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        nameLabel.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        nameLabel.font = UIFont(name: "Verdana-Bold", size: 15)
        nameLabel.textColor = UIColor.white
    }
    
}

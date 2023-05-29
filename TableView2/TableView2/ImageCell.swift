//
//  ImageCell.swift
//  TableView2
//
//  Created by olivier geiger on 29/05/2023.
//

import UIKit

class ImageCell: UITableViewCell {
    
    var imagesView   = UIImageView()
    var imagesLabel  = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(imagesView)
        addSubview(imagesLabel)
        
        configureImagesView()
        configureImagesLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func set(images: Image) {
        imagesView.image = images.image
        imagesLabel.text = images.title
        imagesLabel.textColor = .label
    }
    
    
    func configureImagesView() {
        imagesView.layer.cornerRadius   = 10
        imagesView.clipsToBounds        = true
        
        imagesView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imagesView.centerYAnchor.constraint(equalTo: centerYAnchor),
            imagesView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            imagesView.widthAnchor.constraint(equalTo: imagesView.heightAnchor, multiplier: 16/9),
            imagesView.heightAnchor.constraint(equalToConstant: 80),
        ])

    }
    
    
    func configureImagesLabel() {
        imagesLabel.numberOfLines               = 0
        imagesLabel.adjustsFontSizeToFitWidth   = true
        
        imagesLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imagesLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            imagesLabel.leadingAnchor.constraint(equalTo: imagesView.trailingAnchor, constant: 20),
            imagesLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            imagesLabel.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
    
}

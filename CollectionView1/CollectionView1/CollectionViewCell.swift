//
//  CollectionViewCell.swift
//  CollectionView1
//
//  Created by olivier geiger on 29/05/2023.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CustomCollectionViewCell"
    
    private let myImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person")
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        return imageView
    }()
    
    private let myLabel: UILabel = {
       let label = UILabel()
        label.text = "People"
        label.textAlignment = .center
        
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.backgroundColor = .systemGray4
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    private func configure() {
        contentView.addSubview(myImageView)
        contentView.addSubview(myLabel)
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            myImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            myImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            myImageView.widthAnchor.constraint(equalTo: contentView.widthAnchor, constant: -10),
            myImageView.heightAnchor.constraint(equalToConstant: 80),
            
            myLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            myLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            myLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor, constant: -10),
        ])
    }
    
    
    func configureCell(label: String) {
        myLabel.text = label
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        myLabel.text = nil
    }
}

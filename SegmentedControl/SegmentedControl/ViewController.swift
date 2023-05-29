//
//  ViewController.swift
//  SegmentedControl
//
//  Created by olivier geiger on 29/05/2023.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - PROPERTIES
    private let cardImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "AC")
        
        return imageView
    }()
    
    // MARK: - LIFECYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configure()
    }
    
    
    // MARK: HELPERS
    @objc func suitDidChanged(_ segmentedControl: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            cardImageView.image = UIImage(named: "AS")!
        case 1:
            cardImageView.image = UIImage(named: "AH")!
        case 2:
            cardImageView.image = UIImage(named: "AC")!
        case 3:
            cardImageView.image = UIImage(named: "AD")!
        default:
            cardImageView.image = UIImage(named: "AD")!
        }
    }
    
    
    // MARK: - LAYOUT FUNCTIONS
    private func configure() {
        let items = ["♠️", "❤️", "♣️", "♦️" ]
        let segmentedControl = UISegmentedControl(items: items)
        
        segmentedControl.addTarget(self, action: #selector(suitDidChanged(_:)), for: .valueChanged)
        segmentedControl.selectedSegmentTintColor = .systemGray5
        
        view.addSubview(cardImageView)
        view.addSubview(segmentedControl)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            cardImageView.widthAnchor.constraint(equalToConstant: 200),
            cardImageView.heightAnchor.constraint(equalToConstant: 300),
            
            
            segmentedControl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            segmentedControl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            segmentedControl.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -75)
        ])
        
        
        
    }


}


//
//  ImageListVC.swift
//  TableView2
//
//  Created by olivier geiger on 29/05/2023.
//

import UIKit

class ImageListVC: UIViewController {
    
    // Create tableView
    var tableView = UITableView()
    var images: [Image] = []
    
    struct Cells {
        static let imageCell = "ImageCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Images"
        view.backgroundColor = .systemBackground
        
        images = fetchData()
        configureTableView()
     
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        // set delegates
        tableView.delegate = self
        tableView.dataSource = self
        
        // set row height
        tableView.rowHeight = 100
        // register cells
        tableView.register(ImageCell.self, forCellReuseIdentifier: Cells.imageCell)
        // set constraints
        tableView.pin(to: view)
    }
}

// MARK: Extensions
extension ImageListVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.imageCell, for: indexPath) as! ImageCell
        let image = images[indexPath.row]
        cell.set(images: image)
     
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = ImageDetails()
        navigationController?.pushViewController(controller, animated: true)
    }
}


extension ImageListVC {
    
    func fetchData() -> [Image] {
        let image1 = Image(image: Images.barbell, title: "Barbell")
        let image2 = Image(image: Images.beach, title: "Beach")
        let image3 = Image(image: Images.running, title: "Running")
        let image4 = Image(image: Images.barbell1, title: "Barbell 1")
        let image5 = Image(image: Images.beach1, title: "Beach 1")
        let image6 = Image(image: Images.running1, title: "Running 1")
        
        return [image1, image2, image3, image4, image5, image6]
    }
}

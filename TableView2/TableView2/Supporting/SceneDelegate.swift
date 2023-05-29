//
//  SceneDelegate.swift
//  TableView2
//
//  Created by olivier geiger on 29/05/2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let navController = UINavigationController(rootViewController: ImageListVC())
        navController.navigationBar.prefersLargeTitles = true
        
        window                      = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene         = windowScene
        window?.rootViewController  = navController
        window?.makeKeyAndVisible()
        
    }
    
}

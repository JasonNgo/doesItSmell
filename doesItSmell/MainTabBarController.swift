//
//  MainTabBarController.swift
//  doesItSmell
//
//  Created by Jason Ngo on 2018-10-25.
//  Copyright © 2018 Jason Ngo. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBarControllerStyling()
        setupTabBarViewControllers()
    }
    
    func setupTabBarControllerStyling() {
        view.backgroundColor = .yellow
        tabBar.tintColor = .purple
        UINavigationBar.appearance().prefersLargeTitles = true
    }
    
    func setupTabBarViewControllers() {
        let flowLayout = UICollectionViewFlowLayout()
        let clothingTypeViewController = ClothingTypeCollectionView(collectionViewLayout: flowLayout)
        clothingTypeViewController.navigationItem.title = "Clothing Types"
        
        let clothingNavController = UINavigationController(rootViewController: clothingTypeViewController)
        clothingNavController.tabBarItem.title = "Types"
//        clothingNavController.tabBarItem.image = image.withRenderingMode(.alwaysOriginal)
        
        
        viewControllers = [
            clothingNavController
        ]
        
    }
    
}

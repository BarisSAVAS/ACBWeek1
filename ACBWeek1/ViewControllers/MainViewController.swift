//
//  MainViewController.swift
//  ACBWeek1
//
//  Created by Barış Savaş on 15.04.2023.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = UINavigationController(rootViewController: ViewController())
        let vc2 = UINavigationController(rootViewController: ProfileViewController())
        
        
        vc1.tabBarItem.image = UIImage(named: "HomeTabBarItem")
        vc2.tabBarItem.image = UIImage(systemName: "person")
        
        vc1.title = "Home"
        vc2.title = "Profile"
        
        setViewControllers([vc1, vc2], animated: true)
    }
}

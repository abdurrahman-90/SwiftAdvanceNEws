//
//  TabViewController.swift
//  SwiftAdvanceNEWS
//
//  Created by Akdag on 2.03.2021.
//

import UIKit

class TabViewController: UITabBarController , UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let forYouController = UINavigationController(rootViewController: ForYouViewController())
        let forYouItem = UITabBarItem(title: "For You", image: UIImage(systemName: "heart.fill"), tag: 0)
        forYouController.tabBarItem = forYouItem
        
        let settingsController = UINavigationController(rootViewController: SettingsViewController())
        let settingsItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 1)
        settingsController.tabBarItem = settingsItem
        
        let sourcesController = UINavigationController(rootViewController: SourcesViewController())
        let sourcesItem = UITabBarItem(title: "Sources", image: UIImage(systemName: "tv.fill"), tag: 2)
        sourcesController.tabBarItem = sourcesItem
        
        let controllers = [forYouController, sourcesController, settingsController]  //array of the root view controllers displayed by the tab bar interface
        self.viewControllers = controllers
        
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        print("Should select viewController: \(viewController.title ?? "") ?")
        return true;
    }
    

 
}

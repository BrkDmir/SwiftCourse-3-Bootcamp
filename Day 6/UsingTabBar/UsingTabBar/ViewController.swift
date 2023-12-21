//
//  ViewController.swift
//  UsingTabBar
//
//  Created by Berkay DEMİR on 18.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let tabItems = tabBarController?.tabBar.items else{return}
        let homeItem = tabItems[0]
        let settingsItem = tabItems[1]
        homeItem.badgeValue = "52"
        settingsItem.badgeValue = "Update!"
        
        let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.systemIndigo
        
        changeColor(itemAppearance: appearance.stackedLayoutAppearance)
        changeColor(itemAppearance: appearance.compactInlineLayoutAppearance)
        changeColor(itemAppearance: appearance.inlineLayoutAppearance)

        
        tabBarController?.tabBar.standardAppearance = appearance
        tabBarController?.tabBar.scrollEdgeAppearance = appearance
    }

    func changeColor(itemAppearance: UITabBarItemAppearance){
        // For Selected
        itemAppearance.selected.iconColor = UIColor.systemOrange
        itemAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.systemOrange]
        itemAppearance.selected.badgeBackgroundColor = UIColor.systemMint
        
        // For Unselected
        itemAppearance.normal.iconColor = UIColor.white
        itemAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.white]
        itemAppearance.normal.badgeBackgroundColor = UIColor.lightGray
    }

}


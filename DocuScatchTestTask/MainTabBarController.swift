//
//  MainTabBarController.swift
//  DocuScatchTestTask
//
//  Created by Dmitry Dmitry on 14.10.2023.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabbar()
    }
    
    func setupTabbar() {
        
        let taskListVC = TaskListVC()
        let taskListNavVC = UINavigationController(rootViewController: taskListVC)
        taskListNavVC.tabBarItem = .init(
            title: "Task List",
            image: UIImage(systemName: "list.bullet.clipboard"),
            selectedImage: UIImage(named: "list.bullet.clipboard.fill")
        )
        
        let CV = CVViewController()
        let CVNavVC = UINavigationController(rootViewController: CV)
        CVNavVC.tabBarItem = .init(
            title: "my CV",
            image: UIImage(systemName: "book.pages"),
            selectedImage: UIImage(systemName: "book.pages.fill")
        )
        
        let appearance = UITabBarAppearance()
        appearance.stackedLayoutAppearance.normal.titleTextAttributes = [
            .foregroundColor: UIColor.black,
            .font: UIFont.systemFont(ofSize: 12)
        ]
        appearance.backgroundColor = UIColor(
            red: 228/255,
            green: 226/255,
            blue: 226/255,
            alpha: 1
        )
        
        tabBar.standardAppearance = appearance
        if #available(iOS 15.0, *) {
            tabBar.scrollEdgeAppearance = appearance
        } else {
            tabBar.isTranslucent = true
        }
        tabBar.tintColor = .red
        viewControllers = [taskListNavVC, CVNavVC]
    }

}

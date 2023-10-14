//
//  SceneDelegate.swift
//  DocuScatchTestTask
//
//  Created by Dmitry Dmitry on 14.10.2023.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        window?.makeKeyAndVisible()
        
        let launchScreenVC = LaunchScreenVC()
        window?.rootViewController = launchScreenVC
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.setupMainInterface()
        }
    }
    
    private func setupMainInterface() {
        let mainTabBarController = MainTabBarController()
        window?.rootViewController = mainTabBarController
    }
}


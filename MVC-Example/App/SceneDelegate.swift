//
//  SceneDelegate.swift
//  MVC-Example
//
//  Created by Ronaldo Avalos on 18/05/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var mainCoordinator : MainCoordinator?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let  scene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: scene)
        let navigationController = UINavigationController ()
        mainCoordinator = MainCoordinator(navigationController:navigationController)
        
        mainCoordinator?.start()
        
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }

   
}


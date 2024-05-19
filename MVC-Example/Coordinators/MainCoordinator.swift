//
//  MainCoordinator.swift
//  MVC-Example
//
//  Created by Ronaldo Avalos on 19/05/24.
//

import Foundation
import UIKit

class MainCoordinator : Coordinator {
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let listOfcharactersViewController = storyboard.instantiateViewController(withIdentifier: "CharactersViewController")
        
        navigationController?.pushViewController(listOfcharactersViewController, animated: true)
    }
    
    
}

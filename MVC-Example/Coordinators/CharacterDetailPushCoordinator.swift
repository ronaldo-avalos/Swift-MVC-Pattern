//
//  CharacterDetailPushCoordinator.swift
//  MVC-Example
//
//  Created by Ronaldo Avalos on 19/05/24.
//

import Foundation
import UIKit

class CharacterDetailPushCoordinator : Coordinator {
    let characterModel : CharacterModel
    var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController?, characterModel : CharacterModel) {
        self.navigationController = navigationController
        self.characterModel = characterModel
    }
    
    func start() {
        let characterDetailViewController = CharacterDetailViewController(character: characterModel)
        navigationController?.pushViewController(characterDetailViewController, animated: true)

    }
}

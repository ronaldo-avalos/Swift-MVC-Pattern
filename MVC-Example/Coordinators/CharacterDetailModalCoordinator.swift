//
//  CharacterDetailModalCoordinator.swift
//  MVC-Example
//
//  Created by Ronaldo Avalos on 19/05/24.
//

import Foundation
import UIKit

class CharacterDetailModalCoordinator : Coordinator {
    let characterModel : CharacterModel
    var viewController: UIViewController?
    
    init(viewController: UIViewController?, characterModel : CharacterModel) {
        self.viewController = viewController
        self.characterModel = characterModel
    }
    
    func start() {
        let characterDetailViewController = CharacterDetailViewController(character: characterModel)
        viewController?.present(characterDetailViewController, animated: true)

    }
}

//
//  CharacterDetailViewController.swift
//  MVC-Example
//
//  Created by Ronaldo Avalos on 18/05/24.
//

import Foundation
import UIKit

class CharacterDetailViewController: UIViewController {
    var mainView: CharacterDetailView { self.view as! CharacterDetailView }

    init(character : CharacterModel){
        super.init(nibName: nil, bundle: nil)
        mainView.configure(character)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = CharacterDetailView ()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
}



//
//  ViewController.swift
//  MVC-Example
//
//  Created by Ronaldo Avalos on 18/05/24.
//

import UIKit

class CharactersViewController: UIViewController {
    var mainView: CharactersListView { self.view as! CharactersListView }
    let apiClient = ListOfCharactersAPIClient()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Cuando la vista haya cargado hacemos la peticion a https
        Task {
            let characters = await apiClient.getListOfCharacters()
            print ("Characters \(characters)")
        }
    }

    override func loadView() {
        view = CharactersListView()
    }

}


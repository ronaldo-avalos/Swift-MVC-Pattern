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
    private var tableViewDataSource: ListOfCharactersTableViewDataSource?
    private var tableViewDelegate: ListOfCharactersTableViewDelegate?
    
    var characterDetailPushCoordinator : CharacterDetailPushCoordinator?
//    var characterDetailPushCoordinator : CharacterDetailModalCoordinator?
    
    override func loadView() {
        view = CharactersListView()
        
        tableViewDelegate = ListOfCharactersTableViewDelegate()
        tableViewDataSource = ListOfCharactersTableViewDataSource(tableView: mainView.charactersTableView)
        mainView.charactersTableView.dataSource = tableViewDataSource
        mainView.charactersTableView.delegate = tableViewDelegate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewDelegate?.didTapOnCell = { [weak self] index in
            print("index \(index)")
            
            // present new view controller
            guard let dataSource = self?.tableViewDataSource else {
                return
            }
            let characterModel = dataSource.characters[index]
            self?.characterDetailPushCoordinator = CharacterDetailPushCoordinator(navigationController:   self?.navigationController, characterModel: characterModel)
//            self?.characterDetailPushCoordinator = CharacterDetailModalCoordinator(viewController: self, characterModel: characterModel)
            self?.characterDetailPushCoordinator?.start()
        }
        
        //Cuando la vista haya cargado hacemos la peticion a https
        Task {
            let characters = await apiClient.getListOfCharacters()
            print ("Characters \(characters)")
            tableViewDataSource?.set(characters: characters.results)
        }
    }
}


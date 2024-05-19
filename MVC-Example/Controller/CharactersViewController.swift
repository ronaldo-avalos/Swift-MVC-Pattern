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
    
    override func loadView() {
        view = CharactersListView()
        
        tableViewDelegate = ListOfCharactersTableViewDelegate()
        tableViewDataSource = ListOfCharactersTableViewDataSource(tableView: mainView.charactersTableView)
        mainView.charactersTableView.dataSource = tableViewDataSource
        mainView.charactersTableView.delegate = tableViewDelegate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Cuando la vista haya cargado hacemos la peticion a https
        Task {
            let characters = await apiClient.getListOfCharacters()
            print ("Characters \(characters)")
            tableViewDataSource?.set(characters: characters.results)
        }
    }



}


//
//  ListOfCharactersTableViewDataSource.swift
//  MVC-Example
//
//  Created by Ronaldo Avalos on 18/05/24.
//

import Foundation
import UIKit

final class ListOfCharactersTableViewDataSource: NSObject, UITableViewDataSource {
    
    private let tableView: UITableView
    
    private(set) var characters : [CharacterModel] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    init(tableView: UITableView, characters: [CharacterModel] = []) {
        self.tableView = tableView
        self.characters = characters
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CharacterListCellView", for: indexPath) as! CharacterListCellView
        let character = characters[indexPath.row]
        cell.configure(character)
        return cell
    }
    
    func set(characters: [CharacterModel]) {
        self.characters = characters
    }
    
}

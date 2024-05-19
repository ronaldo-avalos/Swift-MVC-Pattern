//
//  CharacterModel.swift
//  MVC-Example
//
//  Created by Ronaldo Avalos on 18/05/24.
//

import Foundation

struct CharacterModel : Decodable {
    let name : String
    let status : String
    let species : String
    let image : String
}

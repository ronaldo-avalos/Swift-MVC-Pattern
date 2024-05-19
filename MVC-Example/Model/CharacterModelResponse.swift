//
//  CharacterModelResponse.swift
//  MVC-Example
//
//  Created by Ronaldo Avalos on 18/05/24.
//

import Foundation

struct CharacterModelResponse : Decodable {
    let results: [CharacterModel]
}

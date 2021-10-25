//
//  ListPokemon.swift
//  TestPokeAPI
//
//  Created by Rayana Prata Neves on 22/10/21.
//

import Foundation

struct ListPokemon: Codable {
    var count: Int?
    var next: String?
    var previous: Bool?
    var results: [Results]
}

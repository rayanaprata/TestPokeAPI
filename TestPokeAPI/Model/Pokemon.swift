//
//  Pokemon.swift
//  TestPokeAPI
//
//  Created by Rayana Prata Neves on 18/10/21.
//

import Foundation

struct Pokemons: Codable {
    var results: [Pokemon]?
}

struct Pokemon: Codable {
    var name: String?
    var urlPokemon: String?
}

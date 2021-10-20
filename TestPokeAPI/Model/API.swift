//
//  API.swift
//  TestPokeAPI
//
//  Created by Rayana Prata Neves on 19/10/21.
//

import Foundation

// ==========

// endpoint: https://pokeapi.co/api/v2/pokemon/

struct ItemPokemon {
    var name: String?
    var url: String?
}

struct ListPokemons {
//    var count: Int?
//    var next: String?
//    var previous: String?
    var results: [ItemPokemon]?
}

// ==========

// endpoint: https://pokeapi.co/api/v2/pokemon/{id}

struct Pokemon {
    var id: Int?
    var name: String?
    var height: Int?
    var weight: Int?
}

struct Sprites {
    var front_default: String
}


struct API {
    
    let baseURL = "https://pokeapi.co/api/v2/"
    
    func setListPokemonURL() -> String {
        return "\(baseURL)/\(EndPoints.pokemon)/"
    }
    
    func setPokemonURL(_ id: Int) -> String {
        return "\(baseURL)/\(EndPoints.pokemon)/\(id)"
    }
    
}

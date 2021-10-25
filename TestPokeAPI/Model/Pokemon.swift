//
//  Pokemon.swift
//  TestPokeAPI
//
//  Created by Rayana Prata Neves on 18/10/21.
//

import Foundation

struct Pokemon: Codable {
    var id: Int?
    var name: String?
    var height: Int?
    var weight: Int?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case height
        case weight
    }
}

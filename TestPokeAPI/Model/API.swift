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





struct API {
    
    let baseURL = "https://pokeapi.co/api/v2"
    
    /// Returns the URL String to Endpoint List Of Pokemons
    func setListPokemonURL() -> String {
        return "\(baseURL)/\(EndPoints.pokemon)"
    }
    
    /// Returns the URL String to Endpoint Pokemon
    func setPokemonURL(_ id: Int) -> String {
        return "\(baseURL)/\(EndPoints.pokemon)/\(id)"
    }
    
    func getPokemons(urlString: String, method: HTTPMethod, response: @escaping (ListPokemon) -> Void, errorReturned: @escaping (String) -> Void) {
        
        let config: URLSessionConfiguration = .default
        let session: URLSession = URLSession(configuration: config)
        
        guard let url: URL = URL(string: urlString) else { return }
        var urlRequest: URLRequest = URLRequest(url: url)
        urlRequest.httpMethod = "\(method)"

        let task = session.dataTask(with: urlRequest, completionHandler: { (result, urlResponse, error) in

            var statusCode: Int = 0
            if let response = urlResponse as? HTTPURLResponse {
                statusCode = response.statusCode
                print(statusCode)
            }

            guard let data = result else { return }
            
            do {
                let decoder: JSONDecoder = JSONDecoder()
                response(try decoder.decode(ListPokemon.self, from: data))

            } catch {
                errorReturned("Nao retornou os dados por algum motivo :/")
            }

        })

        task.resume()
        
    }
    
}

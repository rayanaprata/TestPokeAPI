//
//  HomeViewController.swift
//  TestPokeAPI
//
//  Created by Rayana Prata Neves on 18/10/21.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: Properties
    let api = API()
    var listPokemons: ListPokemon?
    
    // MARK: Outlets
    @IBOutlet weak var tableViewPokemons: UITableView!
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    // MARK: Methods
    func setupUI() {
        title = "Home"
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"Home", style:.plain, target:nil, action:nil)
        
        tableViewPokemons.dataSource = self
        tableViewPokemons.delegate = self
        
        let nib = UINib(nibName: "PokemonTableViewCell", bundle: nil)
        tableViewPokemons.register(nib, forCellReuseIdentifier: "PokemonTableViewCell")
        
        let url = api.setListPokemonURL()
        print("\(url)")
        api.getPokemons(urlString: url, method: .GET) { pokemonsReturned in
            self.listPokemons = pokemonsReturned
            DispatchQueue.main.async {
                print("Quantidade de pokémons: ", self.listPokemons!.results.count)
                self.tableViewPokemons.reloadData()
            }
        } errorReturned: { errorMessage in
            print("\(errorMessage)")
        }

    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let list = self.listPokemons {
            return list.results.count
        } else {
            return 0
        }

       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                   
           let pokemon = listPokemons!.results[indexPath.row]
           
           if let cell = tableViewPokemons.dequeueReusableCell(withIdentifier: "PokemonTableViewCell") as? PokemonTableViewCell {
               cell.labelPokemonName.text = pokemon.name?.capitalized
               return cell
           }
           
           return UITableViewCell()
       }
    
}

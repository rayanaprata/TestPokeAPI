//
//  HomeViewController.swift
//  TestPokeAPI
//
//  Created by Rayana Prata Neves on 18/10/21.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: Properties
    var pokemons: [Pokemon] = []
    
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
        tableViewPokemons.reloadData()
    }
}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return pokemons.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
                   
           let pokemon = pokemons[indexPath.row]
           
           if let cell = tableViewPokemons.dequeueReusableCell(withIdentifier: "PokemonTableViewCell") as? PokemonTableViewCell {
               cell.setup(pokemon)
               return cell
           }
           
           return UITableViewCell()
       }
    
}

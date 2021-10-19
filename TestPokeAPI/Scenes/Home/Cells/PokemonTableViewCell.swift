//
//  PokemonTableViewCell.swift
//  TestPokeAPI
//
//  Created by Rayana Prata Neves on 18/10/21.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {

    // MARK: Outlets
    @IBOutlet weak var imagePokemon: UIImageView!
    @IBOutlet weak var labelPokemonName: UILabel!
    
    // MARK: Overrides
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    // MARK: Methods
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setup (_ pokemon: Pokemon) {
        labelPokemonName.text = pokemon.name
    }
    
}

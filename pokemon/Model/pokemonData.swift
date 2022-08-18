//
//  pokemonData.swift
//  pokemon
//
//  Created by Марк Русаков on 18.08.22.
//

import Foundation

struct PokemonData: Decodable {
    let results : [Results]
}

struct Results : Decodable{
    let name: String
}

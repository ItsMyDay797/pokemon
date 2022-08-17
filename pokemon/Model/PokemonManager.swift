//
//  PokemonManager.swift
//  pokemon
//
//  Created by Марк Русаков on 17.08.22.
//

import Foundation


class PockemonManager{
    func fetchData(pagination: Bool = false, completion: @escaping (Result<[String], Error>) -> Void) {
         
        DispatchQueue.global().asyncAfter(deadline: .now() + 1, execute: {
        let data = [
            "Poke1",
            "Poke2",
            "Poke3"
        ]
            completion(.success(data))
        })
    }
}

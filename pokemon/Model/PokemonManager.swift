//
//  PokemonManager.swift
//  pokemon
//
//  Created by Марк Русаков on 17.08.22.
//

import Foundation

class PockemonManager{
    let pokemonURL = "https://pokeapi.co/api/v2/pokemon/"
    
   
    
    func fetchData(pagination: Bool = false, completion: @escaping (Result<[String], Error>) -> Void) {
         
        DispatchQueue.global().asyncAfter(deadline: .now(), execute: {
        let data = [
            Variables.name1,
            Variables.name2,
            Variables.name3,
            Variables.name4,
            Variables.name5,
            Variables.name6,
            Variables.name7,
            Variables.name8,
            Variables.name9,
            Variables.name10,
            Variables.name11,
            Variables.name12,
            Variables.name13,
            Variables.name14,
            Variables.name15,
            Variables.name16,
            Variables.name17,
            Variables.name18,
            Variables.name19,
            Variables.name20
        ]
            completion(.success(data))
        })
    }
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    func fetchPokemon(pokemonId: String){
//        let urlString = "\(pokemonURL)/\(pokemonId)"
//        performRequest(urlString: urlString)
//    }
//
//    func performRequest(urlString: String){
//        if  let url = URL(string: urlString) {
//
//            let session = URLSession(configuration: .default)
//
//            let task =  session.dataTask(with: url) {(data, response, error) in
//                if error != nil {
//                    print(error!)
//                    return
//                }
//                if let safeData = data {
//                    self.parseJSON(pokemonData: safeData)
//                }
//            }
//
//            task.resume()
//        }
//
//    }
//
//    func handle(data: Data?, response: URLResponse?, error: Error?) {
//        if error != nil {
//            print(error)
//            return
//        }
//
//        if let safeData =  data {
//            parseJSON(pokemonData: safeData)
//
//        }
//    }
//
//    func parseJSON(pokemonData: Data) -> String?{
//        let decoder = JSONDecoder()
//        do {
//        let decodedData = try decoder.decode(PokemonData.self, from: pokemonData)
//            let name = decodedData.results[0].name
//            return name
//        } catch {
//            print(error)
//            return nil
//        }
//    }
//
}

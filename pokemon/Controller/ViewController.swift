//
//  ViewController.swift
//  pokemon
//
//  Created by Марк Русаков on 17.08.22.
//

import UIKit

struct Variables{
    static var name1 = ""
    static var name2 = ""
    static var name3 = ""
    static var name4 = ""
    static var name5 = ""
    static var name6 = ""
    static var name7 = ""
    static var name8 = ""
    static var name9 = ""
    static var name10 = ""
    static var name11 = ""
    static var name12 = ""
    static var name13 = ""
    static var name14 = ""
    static var name15 = ""
    static var name16 = ""
    static var name17 = ""
    static var name18 = ""
    static var name19 = ""
    static var name20 = ""
}

class ViewController: UIViewController, UITableViewDataSource {
    
private let pokemonManager = PockemonManager()

    
   
    
    private let tableView: UITableView = {let tableView = UITableView(frame: .zero, style: .grouped); tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return tableView
    }()
    
    private var data = [String]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.dataSource = self
        
        let pokemonURL = "https://pokeapi.co/api/v2/pokemon/"
        
        guard let url = URL(string: pokemonURL) else {return}
        
        URLSession.shared.dataTask(with: url) {data, response, error in
            if let error = error {
                print(error)
                return
            }
            
            guard let data = data else{ return }
            
            do {
                let names = try JSONDecoder().decode(PokemonData.self, from: data)
                Variables.name1 = names.results[0].name
                Variables.name2 = names.results[1].name
//                Variables.name3 = names.results[2].name
//                Variables.name4 = names.results[3].name
//                Variables.name5 = names.results[4].name
//                Variables.name6 = names.results[5].name
//                Variables.name7 = names.results[6].name
//                Variables.name8 = names.results[7].name
//                Variables.name9 = names.results[8].name
//                Variables.name10 = names.results[9].name
//                Variables.name11 = names.results[10].name
//                Variables.name12 = names.results[11].name
//                Variables.name13 = names.results[12].name
//                Variables.name14 = names.results[13].name
//                Variables.name15 = names.results[14].name
//                Variables.name16 = names.results[15].name
//                Variables.name17 = names.results[16].name
//                Variables.name18 = names.results[17].name
//                Variables.name19 = names.results[18].name
//                Variables.name20 = names.results[19].name
                
            } catch {
                print(error)
            }
           
        }.resume()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
        pokemonManager.fetchData(pagination: false, completion: {[weak self]result in
            switch result {
            case .success(let data):
                self?.data.append(contentsOf: data)
                
                DispatchQueue.main.async {
                    self?.tableView.reloadData()
                }
            case .failure(_):
                break
            }
        })
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
}

